
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp
              cursor->
              action->
              mutation->
              list->
              <>
              div
              button
              textarea
              span
              input
              i]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [app.config :refer [dev?]]
            ["icons" :as icons]
            [clojure.string :as string]))

(defcomp
 comp-icon
 (icon-name code)
 (div
  {:style (merge
           ui/center
           {:width 120, :height 120, :border (str "1px solid " (hsl 0 0 96))})}
  (div
   {:style {:text-align :center, :font-size 24, :padding 8}}
   (i {:style {}, :class-name (str "fa fa-" code)}))
  (div
   {:style (merge ui/column {:text-align :center, :font-size 12})}
   (<> icon-name)
   (<> code))))

(def icons-dict (js->clj icons))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store), state (or (:data states) {:query ""})]
   (div
    {:style (merge ui/global ui/column)}
    (div
     {}
     (<> "Header")
     (input
      {:style ui/input,
       :value (:query state),
       :placeholder "Filter...",
       :on-input (fn [e d! m!] (m! (assoc state :query (:value e))))}))
    (div
     {}
     (list->
      {:style (merge ui/row {:flex-wrap :wrap})}
      (->> icons-dict
           (filter (fn [[icon-name code]] (string/includes? code (:query state))))
           (map (fn [[icon-name icon-code]] [icon-name (comp-icon icon-name icon-code)])))))
    (when dev? (cursor-> :reel comp-reel states reel {})))))
