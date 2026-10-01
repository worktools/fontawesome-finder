
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-message.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/column
                comp-header $ :content store
                list->
                  {} $ :style $ merge ui/flex
                    {} (:flex-wrap :wrap) (:padding "|32px 16px 80px 16px") (:overflow :auto) (:text-align :center)
                  ->
                    decode-map-as
                      -> icons-dict (to-pairs) (&set:to-list)
                      :: 'List $ :: 'List 'String
                    (filter (fn (pair) (hint-fn ({} (:args ([] (:: 'List 'String))) (:return 'Bool) (:features (#{} :js-ffi)))) (decode-map-as (fuzzy/test (:content store) (option:unwrap (nth pair 1))) 'Bool)))
                    (map (fn (pair) (hint-fn ({} (:args ([] (:: 'List 'String))) (:return (:: 'List 'Dynamic)))) (let ((icon-name (option:unwrap (nth pair 0))) (code (option:unwrap (nth pair 1)))) ([] icon-name (comp-icon icon-name code)))))
                comp-messages (:messages store)
                  {} $ :bottom? false
                  fn (info d!)
                    d! $ schema/Op :message action/remove-one $ decode-map-as info (:: 'Map 'Tag 'Dynamic)
                when dev? $ comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
            :features $ #{} :js-ffi
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-header (content)
            div
              {} $ :style $ {} (:padding 16)
                :border-bottom $ str "|1px solid " $ hsl 0 0 96
                :text-align :center
              <> "|FontAwesome 4.7 icons" $ {} (:font-family ui/font-fancy) (:font-size 16) (:font-weight 300)
              =< 16 $ {}
              input $ {}
                :style $ merge ui/input $ {} (:width 400)
                :value content
                :placeholder |Filter...
                :on-input $ fn (e d!)
                  d! $ schema/Op :content $ decode-map-as
                    option:unwrap $ get e :value
                    , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'comp-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-icon (icon-name code)
            div
              {} $ :class-name |cell-container
              create-element :i $ {} $ :class-name (str "|cell-icon fa fa-" code)
              span $ {} (:inner-text icon-name) (:class-name |cell-name)
                :on-click $ fn (e d!) (copy-text! icon-name d!)
              span $ {} (:inner-text code) (:class-name |cell-code)
                :on-click $ fn (e d!) (copy-text! code d!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'copy-text! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn copy-text! (text d!) (copy text)
            let
                token $ decode-map-as (shortid/generate) 'String
              d! $ schema/Op :message action/create $ {}
                :text $ str "|Copied: " text
                :token token
              js/setTimeout
                fn () $ d! $ schema/Op :message action/remove-one
                  {} $ :token token
                , 2000
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'icons-dict $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def icons-dict (load-icons)
          :examples $ []
          :schema $ :: 'Map 'String 'String
        'load-icons $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-icons ()
            decode-map-as (to-calcit-data icons) (:: 'Map 'String 'String)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'Map 'String 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo.util.format :refer $ [] hsl
            respo.core :refer $ [] defcomp >> list-> <> div span input create-element
            respo.comp.space :refer $ [] =<
            reel.comp.reel :refer $ [] comp-typed-reel
            app.config :refer $ [] dev?
            app.schema :as schema
            |../js/icons.js :default icons
            |copy-text-to-clipboard :default copy
            |shortid :as shortid
            respo-message.comp.messages :refer $ [] comp-messages
            respo-message.action :as action
            |fuzzy :as fuzzy
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            = |true $ option:unwrap-or (get-env |cdn) |false
          :examples $ []
          :schema $ :: 'Bool
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/fontawesome-finder/) (:cdn-folder |tiye.me:cdn/fontawesome-finder) (:title "|Fontawesome Finder") (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |fontawesome-finder) (:upload-folder |tiye.me:repo/jimengio/fontawesome-finder/)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            match (typed/decode-control op)
              (:some control)
                reset! *reel $ typed/apply-control updater @*reel control
              (:none)
                reset! *reel $ typed/record-op updater @*reel (assert-type op 'app.schema/Op) (generate-id!)
                  :timestamp $ date-now-snapshot
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            set-before-unload! $ fn (event) (persist-storage!)
            match
              storage-get $ option:unwrap $ get config/site :storage-key
              (:some raw)
                match
                  schema/decode-store $ parse-cirru-edn raw
                  (:some stored)
                    dispatch! $ schema/Op :hydrate-storage stored
                  (:none) (hud! |error "|Ignored invalid saved state")
              (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              option:unwrap $ get config/site :storage-key
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ [] render! clear-cache!
            app.comp.container :refer $ [] comp-container
            app.updater :refer $ [] updater
            app.schema :as schema
            reel.util :refer $ [] listen-devtools!
            reel.typed :as typed
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.shared :refer $ [] date-now-snapshot
            js-ffi.browser :refer $ [] query-selector set-before-unload! storage-get storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:states 'List 'Dynamic) (:content 'String) (:hydrate-storage 'app.schema/Store)
            :message 'Tag $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states 'Map) (:content 'String)
            :messages $ :: 'Map 'String 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (data)
            match (try-decode-map-as data Store)
              (:ok stored) (%some stored)
              (:err _) (%none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option 'app.schema/Store
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content | :messages $ {}
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor state)
                assoc store :states $ assert-type
                  update-state-tree (:states store) cursor state
                  , 'Map
              (:content content) (assoc store :content content)
              (:hydrate-storage data) data
              (:message tag data)
                assoc store :messages $ decode-map-as
                  update-messages (:messages store) tag data op-id op-time
                  :: 'Map 'String 'Dynamic
              _ $ do (println "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ [] update-state-tree
            respo-message.updater :refer $ [] update-messages
