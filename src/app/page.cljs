
(ns app.page
  (:require [respo.render.html :refer [make-string]]
            [shell-page.core :refer [make-page spit slurp]]
            [app.comp.container :refer [comp-container]]
            [app.schema :as schema]
            [reel.schema :as reel-schema]
            [cljs.reader :refer [read-string]]
            [app.config :as config]
            [app.util :refer [get-env!]]))

(def base-info
  {:title (:title config/site), :icon (:icon config/site), :ssr nil, :inline-html nil})

(defn dev-page []
  (make-page
   ""
   (merge
    base-info
    {:styles ["./fontawesome/css/font-awesome.css" "/entry/main.css" (:dev-ui config/site)],
     :scripts ["/main.js"],
     :inline-styles []})))

(def local-bundle? (= "local-bundle" (get-env! "mode")))

(defn prod-page []
  (let [reel (-> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store))
        html-content (make-string (comp-container reel))
        assets (read-string (slurp "dist/assets.edn"))
        cdn (if local-bundle? "" (:cdn-url config/site))
        prefix-cdn (fn [x] (str cdn x))]
    (make-page
     html-content
     (merge
      base-info
      {:styles [(if local-bundle?
                  "./fontawesome/css/font-awesome.css"
                  (str (:cdn-url config/site) "fontawesome/css/font-awesome.css"))
                (:release-ui config/site)],
       :scripts (map #(-> % :output-name prefix-cdn) assets),
       :ssr "respo-ssr",
       :inline-styles [(slurp "./entry/main.css")]}))))

(defn main! []
  (if (contains? config/bundle-builds (get-env! "mode"))
    (spit "dist/index.html" (prod-page))
    (spit "target/index.html" (dev-page))))
