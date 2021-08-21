
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-message.calcit/ |cumulo-util.calcit/
    :version nil
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> list-> <> div button textarea span input create-element
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.config :refer $ [] dev?
          [] "\"../js/icons" :default icons
          [] "\"copy-text-to-clipboard" :default copy
          [] "\"shortid" :as shortid
          [] clojure.string :as string
          [] respo-message.comp.messages :refer $ [] comp-messages
          [] respo-message.action :as action
          [] "\"fuzzy" :as fuzzy
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/fullscreen ui/column)
                comp-header $ :content store
                list->
                  {} $ :style
                    merge ui/flex $ {} (:flex-wrap :wrap) (:padding "\"32px 16px 80px 16px") (:overflow :auto) (:text-align :center)
                  -> icons-dict (.to-list)
                    .filter-pair $ fn (icon-name code)
                      fuzzy/test
                        or (:content store) "\""
                        , code
                    .map-pair $ fn (icon-name icon-code)
                      [] icon-name $ comp-icon icon-name icon-code
                comp-messages (:messages store)
                  {} $ :bottom? false
                  fn (info d!) (d! action/remove-one info)
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-icon $ quote
          defcomp comp-icon (icon-name code)
            div
              {} $ :class-name "\"cell-container"
              create-element :i $ {}
                :class-name $ str "\"cell-icon fa fa-" code
              span $ {} (:inner-text icon-name) (:class-name "\"cell-name")
                :on-click $ fn (e d!) (copy-text! icon-name d!)
              span $ {} (:inner-text code) (:class-name "\"cell-code")
                :on-click $ fn (e d!) (copy-text! code d!)
        |copy-text! $ quote
          defn copy-text! (text d!) (copy text)
            let
                token $ shortid/generate
              d! action/create $ {}
                :text $ str "\"Copied: " text
                :token token
              js/setTimeout
                \ d! action/remove-one $ {} (:token token)
                , 2000
        |comp-header $ quote
          defcomp comp-header (content)
            div
              {} $ :style
                {} (:padding 16)
                  :border-bottom $ str "\"1px solid " (hsl 0 0 96)
                  :text-align :center
              <> "\"FontAwesome 4.7 icons" $ {} (:font-family ui/font-fancy) (:font-size 16) (:font-weight 300)
              =< 16 nil
              input $ {}
                :style $ merge ui/input
                  {} $ :width 400
                :value content
                :placeholder "\"Filter..."
                :on-input $ fn (e d!)
                  d! :content $ :value e
        |icons-dict $ quote
          def icons-dict $ to-calcit-data icons
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
            :messages $ {}
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
          [] respo-message.action :as action
          [] respo-message.updater :refer $ [] update-messages
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            if (action/message-action? op)
              update store :messages $ \ update-messages % op op-data op-id op-time
              case-default op
                do (println "\"Unknown op:" op) store
                :states $ update-states store op-data
                :content $ assoc store :content op-data
                :hydrate-storage op-data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! (? e)
            .setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/fontawesome-finder/") (:cdn-folder "\"tiye.me:cdn/fontawesome-finder") (:title "\"Fontawesome Finder") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"fontawesome-finder") (:upload-folder "\"tiye.me:repo/jimengio/fontawesome-finder/")
