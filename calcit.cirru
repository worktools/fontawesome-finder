
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-message.calcit/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/column
                comp-header $ :content store
                keyed->
                  {} $ :style $ .merge ui/flex
                    {} (:flex-wrap |wrap) (:padding "|32px 16px 80px 16px") (:overflow |auto) (:text-align |center)
                  ->
                    &set:to-list $ to-pairs icons-dict
                    filter $ fn (pair)
                      hint-fn $ Fn (Tuple String String) (-> Bool) (:features :js-ffi)
                      let[] (_name code) pair $ decode-map-as
                        fuzzy/test (:content store) code
                        , 'Bool
                    map $ fn (pair)
                      hint-fn $ Fn (Tuple String String) (-> respo.schema/ChildPair)
                      let[] (icon-name code) pair $ keyed-component icon-name $ comp-icon icon-name code
                comp-messages (:messages store)
                  {} $ :bottom? false
                  fn (info d!)
                    hint-fn $ Fn (Map Tag Dynamic)
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    match (read-toast-key info)
                      (:some key)
                        d! $ schema/Op :dismiss-copy key
                      (:none) &unit
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State schema/Op schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-header (content)
            div
              {} $ :style $ {} (:padding |16px)
                :border-bottom $ str "|1px solid " $ hsl 0 0 96
                :text-align |center
              <> "|FontAwesome 4.7 icons" $ {} (:font-family ui/font-fancy) (:font-size |16px) (:font-weight |300)
              space-x 16
              input $ {}
                :style $ .merge ui/input $ {} (:width |400px)
                :value content
                :placeholder |Filter...
                :on-input $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                  d! $ schema/Op :content $ decode-map-as (:value e) 'String
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
        'comp-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-icon (icon-name code)
            div
              {} $ :class-name |cell-container
              create-element :i $ {} $ :class-name (str "|cell-icon fa fa-" code)
              span $ {} (:inner-text icon-name) (:class-name |cell-name)
                :on-click $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                    :features :js-ffi
                  copy-text! icon-name d!
              span $ {} (:inner-text code) (:class-name |cell-code)
                :on-click $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                    :features :js-ffi
                  copy-text! code d!
          :examples $ []
          :schema $ quote $ Fn String String (-> respo.schema/Component) (:features :js-ffi)
        'copy-text! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn copy-text! (text d!) (copy text)
            let
                token $ decode-map-as (shortid/generate) 'String
              d! $ schema/Op :copied text token
              js/setTimeout
                fn ()
                  hint-fn $ Fn (-> Unit) (:features :js-ffi)
                  d! $ schema/Op :dismiss-copy $ schema/ToastKey :token token
                , 2000
            , &unit
          :examples $ []
          :schema $ quote $ Fn String
            Fn schema/Op (-> Unit) (:features :js-ffi)
            -> Unit
            :features :js-ffi
        'icons-dict $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def icons-dict (load-icons)
          :examples $ []
          :schema $ quote $ Map String String
        'load-icons $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-icons ()
            decode-map-as (to-calcit-data icons) (Map String String)
          :examples $ []
          :schema $ quote $ Fn
            -> $ Map String String
            :features :js-ffi
        'read-toast-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-toast-key (info)
            let
                id $ .unwrap-or (get info :id) false
                token $ .unwrap-or (get info :token) false
              if (string? id)
                Some $ schema/ToastKey :id id
                if (string? token)
                  Some $ schema/ToastKey :token token
                  if token
                    Some $ schema/ToastKey :legacy-token token
                    , None
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic)
            -> $ Option schema/ToastKey
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp >> keyed-> keyed-component <> div span input create-element
            respo.comp.space :refer $ space-x
            reel.comp.reel :refer $ comp-typed-reel
            app.config :refer $ dev?
            app.schema :as schema
            |../js/icons.js :default icons
            |copy-text-to-clipboard :default copy
            |shortid :as shortid
            respo-message.comp.messages :refer $ comp-messages
            |fuzzy :as fuzzy
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            = |true $ .unwrap-or (get-env |cdn) |false
          :examples $ []
          :schema $ quote Bool
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/fontawesome-finder/) (:cdn-folder |tiye.me:cdn/fontawesome-finder) (:title "|Fontawesome Finder") (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |fontawesome-finder) (:upload-folder |tiye.me:repo/jimengio/fontawesome-finder/)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/Op schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            match op
              (reel.typed/Control control)
                reset! *reel $ typed/apply-control updater @*reel control
              (app.schema/Op action)
                reset! *reel $ typed/record-op updater @*reel action (generate-id!)
                  :timestamp $ date-now-snapshot
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ResolvedOp (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            match
              storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                match
                  schema/decode-store $ parse-cirru-edn raw
                  (:some stored)
                    dispatch! $ schema/Op :hydrate-storage stored
                  (:none)
                    do (hud! |error |Invalid-saved-state) (raise |Invalid-saved-state)
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (r p)
              hint-fn $ Fn (reel.typed/State app.schema/Op app.schema/Store) (reel.typed/State app.schema/Op app.schema/Store) (-> Unit)
              render-app!
            listen-devtools! |a on-control!
            set-before-unload! $ fn (event)
              hint-fn $ Fn js-ffi.browser/EventHost $ -> Unit
              persist-storage!
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            narrow-element $ .unwrap $ query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch! control)
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev)
                  hint-fn $ Fn (reel.typed/State app.schema/Op app.schema/Store) (reel.typed/State app.schema/Op app.schema/Store) (-> Unit)
                  render-app!
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              fn (op)
                hint-fn $ Fn app.schema/Op $ -> Unit
                dispatch! $ schema/require-op op
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.typed :as typed
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.shared :refer $ date-now-snapshot
            js-ffi.browser :refer $ query-selector set-before-unload! storage-get storage-set!
            respo.ffi.browser :refer $ narrow-element
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|New copy notifications use :copied and :dismiss-copy. Keep :message for records created before this migration."
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :content String
            :hydrate-storage app.schema/Store
            :copied String String
            :dismiss-copy app.schema/ToastKey
            :message Tag $ Map Tag Dynamic
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp app.schema/Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states Map) (:content String)
            :messages $ Map String Dynamic
          :examples $ []
          :schema $ quote StructDef
        'ToastKey $ %{} 'CodeEntry
          :doc "|Manual dismissal prefers a message ID. Only restored notices without an ID may use an opaque legacy token."
          :code $ quote $ defenum ToastKey (:id String) (:token String) (:legacy-token Dynamic)
          :examples $ []
          :schema $ quote EnumDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (data)
            if (struct? data)
              struct-match data
                Store stored $ Some stored
                _ external $ if
                  = (&struct:get-name external) :Store
                  match
                    try-decode-map-as (&struct:to-map external) 'app.schema/Store
                    (:ok stored) (Some stored)
                    (:err _) None
                  , None
              match (try-decode-map-as data 'app.schema/Store)
                (:ok stored) (Some stored)
                (:err _) None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option Store
            :generics Input
          :tests $ [] $ %{} 'TestEntry (:name |saved-search-roundtrip)
            :code $ quote $ let
                original $ Store :states ({}) :content |github :messages $ {}
              assert= (Some original)
                decode-store $ parse-cirru-edn $ format-cirru-edn original
              assert= (Some original) (decode-store original)
              assert= None $ decode-store $ assoc (&struct:to-map original) :content 1
            :tags $ #{} :unit
        'require-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn require-op (op)
            match op
              (:states cursor state)
                Op :states
                  decode-map-as cursor $ List respo.schema/CoordKey
                  , state
              (:content text)
                Op :content $ decode-map-as text 'String
              (:hydrate-storage data)
                match (decode-store data)
                  (:some stored) (Op :hydrate-storage stored)
                  (:none)
                    raise "|Expected valid Store in :hydrate-storage operation"
              (:copied text token)
                Op :copied (decode-map-as text String) (decode-map-as token String)
              (:dismiss-copy key)
                Op :dismiss-copy $ decode-map-as key app.schema/ToastKey
              (:message tag data)
                Op :message (decode-map-as tag Tag)
                  decode-map-as data $ Map Tag Dynamic
              _ $ raise "|Unknown application operation"
          :examples $ []
          :schema $ quote $ Fn Op (-> Op)
          :tests $ [] $ %{} 'TestEntry (:name |preserves-valid-operation-payloads)
            :code $ quote $ do
              assert=
                Op :states ([] :query) |state
                require-op $ Op :states ([] :query) |state
              assert= (Op :content |query)
                require-op $ Op :content |query
              assert= (Op :hydrate-storage store)
                require-op $ Op :hydrate-storage store
              assert= (Op :copied |github |token)
                require-op $ Op :copied |github |token
              assert=
                Op :dismiss-copy $ ToastKey :token |token
                require-op $ Op :dismiss-copy $ ToastKey :token |token
              , &unit
            :tags $ #{} :regression
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content | :messages $ {}
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor state)
                assoc store :states $ decode-map-as
                  update-state-tree (:states store) cursor state
                  , 'Map
              (:content content) (assoc store :content content)
              (:hydrate-storage data) data
              (:copied text token)
                assoc store :messages $ decode-map-as
                  update-messages (:messages store) :message/create
                    {}
                      :text $ str "|Copied: " text
                      :token token
                    , op-id op-time
                  Map String Dynamic
              (:dismiss-copy key)
                let
                    info $ match key
                      (:id id)
                        {} $ :id id
                      (:token token)
                        {} $ :token token
                      (:legacy-token token)
                        {} $ :token token
                  assoc store :messages $ decode-map-as
                    update-messages (:messages store) :message/remove-one info op-id op-time
                    Map String Dynamic
              (:message tag data)
                assoc store :messages $ decode-map-as
                  update-messages (:messages store) tag data op-id op-time
                  Map String Dynamic
              _ $ do (println "|Unknown op:" op) store
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-toast-removal)
            :code $ quote $ let
                created $ updater app.schema/store
                  app.schema/Op :message :message/create $ {} (:text |old) (:token 42)
                  , |legacy 1
                two $ updater created
                  app.schema/Op :message :message/create $ {} (:text |second) (:token 42)
                  , |second 1
                key $ .unwrap $ app.comp.container/read-toast-key
                  {} (:id |legacy) (:token 42)
                token-key $ .unwrap $ app.comp.container/read-toast-key
                  {} $ :token 42
                removed $ updater created
                  app.schema/Op :message :message/remove-one $ {} $ :token 42
                  , |remove 2
                one $ updater two (app.schema/Op :dismiss-copy key) |remove 2
              assert= (app.schema/ToastKey :id |legacy) key
              assert= (app.schema/ToastKey :legacy-token 42) token-key
              assert= ({}) (:messages removed)
              assert= 1 $ count $ :messages one
              assert= true $ contains? (:messages one) |second
              assert= ({})
                :messages $ updater created (app.schema/Op :dismiss-copy token-key) |remove 2
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-state-tree
            respo-message.updater :refer $ update-messages
