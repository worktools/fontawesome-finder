
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
            ["copy-text-to-clipboard" :as copy]
            ["shortid" :as shortid]
            [clojure.string :as string]
            [respo-message.comp.messages :refer [comp-messages]]
            [respo-message.action :as action]))

(defcomp
 comp-header
 (content)
 (div
  {:style {:padding 16, :border-bottom (str "1px solid " (hsl 0 0 96)), :text-align :center}}
  (<> "FontAwesome 4.7 icons" {:font-family ui/font-fancy, :font-size 16, :font-weight 300})
  (=< 16 nil)
  (input
   {:style (merge ui/input {:width 400}),
    :value content,
    :placeholder "Filter...",
    :on-input (fn [e d! m!] (d! :content (:value e)))})))

(defn copy-text! [text d!]
  (let [token (.generate shortid)]
    (d! action/create {:text (str "Copied: " text), :token token})
    (js/setTimeout #(d! action/remove-one {:token token}) 2000)))

(defcomp
 comp-icon
 (icon-name code)
 (div
  {:style (merge
           ui/center
           {:width 120,
            :height 120,
            :border (str "1px solid " (hsl 0 0 98)),
            :font-size 12,
            :font-family ui/font-normal,
            :color (hsl 0 0 70)})}
  (i
   {:style {:text-align :center, :font-size 24, :padding 8, :color :black},
    :class-name (str "fa fa-" code)})
  (span
   {:inner-text icon-name,
    :style {:cursor :pointer},
    :on-click (fn [e d! m!] (copy-text! icon-name d!))})
  (span
   {:inner-text code,
    :style {:cursor :pointer, :font-size 10},
    :on-click (fn [e d! m!] (copy-text! code d!))})))

(def icons-dict (js->clj (.-default icons)))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/column)}
    (comp-header (:content store))
    (list->
     {:style (merge
              ui/row
              ui/flex
              {:flex-wrap :wrap,
               :padding "32px 16px 80px 16px",
               :justify-content :center,
               :overflow :auto,
               :align-items :flex-start})}
     (->> icons-dict
          (filter (fn [[icon-name code]] (string/includes? code (or (:content store) ""))))
          (map (fn [[icon-name icon-code]] [icon-name (comp-icon icon-name icon-code)]))))
    (comp-messages
     (:messages store)
     {:bottom? false}
     (fn [info d! m!] (d! action/remove-one info)))
    (when dev? (cursor-> :reel comp-reel states reel {})))))
