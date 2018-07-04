
(ns app.updater
  (:require [respo.cursor :refer [mutate]]
            [respo-message.action :as action]
            [respo-message.updater :refer [update-messages]]))

(defn updater [store op op-data op-id op-time]
  (if (action/message-action? op)
    (update store :messages #(update-messages % op op-data op-id op-time))
    (case op
      :states (update store :states (mutate op-data))
      :content (assoc store :content op-data)
      :hydrate-storage op-data
      store)))
