
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-message.calcit/ |cumulo-util.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |Hy6-sOYqaSb)
              |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reel) (:time 1507461830530) (:type :leaf) (:id |r1gMj_KqTSZ)
                :time 1499755354983
                :type :expr
                :id |H1yfo_t9aB-
              |v $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |let) (:time 1507461833421) (:type :leaf) (:id |SkGx0cFPh-)
                  |L $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |store) (:time 1507461835738) (:type :leaf) (:id |SyMAqtD2W)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:store) (:time 1507461837276) (:type :leaf) (:id |r1GEC5Kv3Z)
                              |j $ {} (:author |root) (:text |reel) (:time 1507461838285) (:type :leaf) (:id |B1NBC5tPh-)
                            :time 1507461836110
                            :type :expr
                            :id |S1XN05tw3-
                        :time 1507461834650
                        :type :expr
                        :id |Hy7CcFP3W
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |states) (:time 1509727105928) (:type :leaf) (:id |rkgYtjzqAWleaf)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:states) (:time 1509727107223) (:type :leaf) (:id |HJE9tjzqAb)
                              |j $ {} (:author |root) (:text |store) (:time 1509727108033) (:type :leaf) (:id |SySiYoMc0-)
                            :time 1509727106316
                            :type :expr
                            :id |HJBcYszqCZ
                        :time 1509727104820
                        :type :expr
                        :id |rkgYtjzqAW
                    :time 1507461834351
                    :type :expr
                    :id |SyeGC5tw3-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |B1zMoOFc6HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bk4GoOt5aSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |:style) (:time 1499755354983) (:type :leaf) (:id |Bk8ModK9pHW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:author |root) (:text |merge) (:time 1499755354983) (:type :leaf) (:id |BydGiOKqpHW)
                                  |j $ {} (:author |root) (:text |ui/global) (:time 1499755354983) (:type :leaf) (:at 1521129814235) (:by |root) (:id |rktMsOY56HW)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1530687419208) (:by |root) (:id |HyZxaJg9zX)
                                  |r $ {} (:author |root) (:text |ui/column) (:time 1499755354983) (:type :leaf) (:at 1530678965236) (:by |root) (:id |H1qGodF96BW)
                                :time 1499755354983
                                :type :expr
                                :id |rJDfsutcaBb
                            :time 1499755354983
                            :type :expr
                            :id |BkBzj_F5TrW
                        :time 1499755354983
                        :type :expr
                        :id |Hy7Gj_YcaSb
                      |q $ {}
                        :data $ {}
                          |T $ {} (:text |comp-header) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HyENi-gl9Gm)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:content) (:type :leaf) (:at 1530687609910) (:by |root) (:id |SJtfeeczQ)
                              |j $ {} (:text |store) (:type :leaf) (:at 1530687611251) (:by |root) (:id |SyXKgg5zX)
                            :type :expr
                            :at 1530687607684
                            :by |root
                            :id |SkxlKlgcz7
                        :type :expr
                        :at 1530687499943
                        :by |root
                        :id |BJNMgl9zm
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |list->) (:type :leaf) (:at 1530678983202) (:by |root) (:id |HyeTp06tGmleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1530678984834) (:by |root) (:id |BygC0aKGQ)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1530679046177) (:by |root) (:id |H1ghbkCFGQ)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1530679052012) (:by |root) (:id |SJXGyAFG7)
                                      |b $ {} (:text |ui/flex) (:type :leaf) (:at 1530687396248) (:by |root) (:id |Bkijke5fQ)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1530679052924) (:by |root) (:id |SkSEzyCtzX)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:flex-wrap) (:type :leaf) (:at 1530679058731) (:by |root) (:id |S1GSz1CtGm)
                                              |j $ {} (:text |:wrap) (:type :leaf) (:at 1530679060195) (:by |root) (:id |r1xizyRKG7)
                                            :type :expr
                                            :at 1530679053612
                                            :by |root
                                            :id |BkIfkRYGm
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1530686041616) (:by |root) (:id |S1ew91cfXleaf)
                                              |j $ {} (:text "|\"32px 16px 80px 16px") (:type :leaf) (:at 1530687458725) (:by |root) (:id |S1xfw9kqGm)
                                            :type :expr
                                            :at 1530686039522
                                            :by |root
                                            :id |S1ew91cfX
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:overflow) (:type :leaf) (:at 1530687389620) (:by |root) (:id |SkeMoJg5G7leaf)
                                              |j $ {} (:text |:auto) (:type :leaf) (:at 1530687391532) (:by |root) (:id |BJgIikeqMm)
                                            :type :expr
                                            :at 1530687386478
                                            :by |root
                                            :id |SkeMoJg5G7
                                          |y $ {}
                                            :data $ {}
                                              |T $ {} (:text |:text-align) (:type :leaf) (:at 1530784543696) (:by |root) (:id |rJ-Q7iPsGQleaf)
                                              |j $ {} (:text |:center) (:type :leaf) (:at 1530784546173) (:by |root) (:id |SJluQjwifQ)
                                            :type :expr
                                            :at 1530784539308
                                            :by |root
                                            :id |rJ-Q7iPsGQ
                                        :type :expr
                                        :at 1530679052558
                                        :by |root
                                        :id |HySfkRKf7
                                    :type :expr
                                    :at 1530679046396
                                    :by |root
                                    :id |ByE0bkCFzX
                                :type :expr
                                :at 1530679044141
                                :by |root
                                :id |HJ-hbk0tf7
                            :type :expr
                            :at 1530678984273
                            :by |root
                            :id |S1xeR0pYM7
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1629576241060) (:by |rJG4IHzWf) (:id |HyzWCRpYzXleaf)
                              |j $ {} (:text |icons-dict) (:type :leaf) (:at 1530679000305) (:by |root) (:id |HyZ9CCTKf7)
                              |l $ {}
                                :data $ {}
                                  |T $ {} (:text |.to-list) (:type :leaf) (:at 1629576243521) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629576242187
                                :by |rJG4IHzWf
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |.filter-pair) (:type :leaf) (:at 1629576245906) (:by |rJG4IHzWf) (:id |r1gRwW0tGm)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1530679656703) (:by |root) (:id |HkbxObAFMm)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |icon-name) (:type :leaf) (:at 1530679660416) (:by |root) (:id |Hy7dbAKfQ)
                                          |j $ {} (:text |code) (:type :leaf) (:at 1530679663143) (:by |root) (:id |BkBEuZAtz7)
                                        :type :expr
                                        :at 1530679657329
                                        :by |root
                                        :id |Hyf-dbAtf7
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |fuzzy/test) (:type :leaf) (:at 1536136879827) (:by |rJG4IHzWf) (:id |rJb_dWAtGmleaf)
                                          |b $ {}
                                            :data $ {}
                                              |T $ {} (:text |or) (:type :leaf) (:at 1536136901992) (:by |rJG4IHzWf) (:id |kV2-GhegIc)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:content) (:type :leaf) (:at 1536136901992) (:by |rJG4IHzWf) (:id |MXeQ0hVYj1)
                                                  |j $ {} (:text |store) (:type :leaf) (:at 1536136901992) (:by |rJG4IHzWf) (:id |wczKchVxjb)
                                                :type :expr
                                                :at 1536136901992
                                                :by |rJG4IHzWf
                                                :id |MH3Ni2OYzj
                                              |r $ {} (:text "|\"") (:type :leaf) (:at 1536136901992) (:by |rJG4IHzWf) (:id |OAV0sdc8hD)
                                            :type :expr
                                            :at 1536136901992
                                            :by |rJG4IHzWf
                                            :id |oM-ZJBGKv9
                                          |j $ {} (:text |code) (:type :leaf) (:at 1530679676578) (:by |root) (:id |S1bEt-CtfQ)
                                        :type :expr
                                        :at 1530679664287
                                        :by |root
                                        :id |rJb_dWAtGm
                                    :type :expr
                                    :at 1530679656315
                                    :by |root
                                    :id |ryMl_ZCtf7
                                :type :expr
                                :at 1530679654090
                                :by |root
                                :id |rkWRv-CtGm
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |.map-pair) (:type :leaf) (:at 1629576252532) (:by |rJG4IHzWf) (:id |BkjkyCYGQ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1530679014034) (:by |root) (:id |rk-6k10YG7)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |icon-name) (:type :leaf) (:at 1530679017856) (:by |root) (:id |BkWxxkAKzX)
                                          |j $ {} (:text |icon-code) (:type :leaf) (:at 1530679019616) (:by |root) (:id |SyfGg1RKzQ)
                                        :type :expr
                                        :at 1530679014305
                                        :by |root
                                        :id |ByGCkyCYf7
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1530679021300) (:by |root) (:id |B1rxJAKG7leaf)
                                          |j $ {} (:text |icon-name) (:type :leaf) (:at 1530679022621) (:by |root) (:id |HJfBg10Kz7)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |comp-icon) (:type :leaf) (:at 1530679083195) (:by |root) (:id |r1E7JRFGQ)
                                              |j $ {} (:text |icon-name) (:type :leaf) (:at 1530679086670) (:by |root) (:id |ry4VJ0KzX)
                                              |r $ {} (:text |icon-code) (:type :leaf) (:at 1530679088765) (:by |root) (:id |S1ZwVy0tfX)
                                            :type :expr
                                            :at 1530679068230
                                            :by |root
                                            :id |BJgVm1AYz7
                                        :type :expr
                                        :at 1530679020630
                                        :by |root
                                        :id |B1rxJAKG7
                                    :type :expr
                                    :at 1530679013256
                                    :by |root
                                    :id |SJfTk1AtMX
                                :type :expr
                                :at 1530679011087
                                :by |root
                                :id |HJejkk0YfQ
                            :type :expr
                            :at 1530678985511
                            :by |root
                            :id |HyzWCRpYzX
                        :type :expr
                        :at 1530678980978
                        :by |root
                        :id |HyeTp06tGm
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |comp-messages) (:type :leaf) (:at 1530686555547) (:by |root) (:id |BkxWPh19zQleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:messages) (:type :leaf) (:at 1530686612356) (:by |root) (:id |S15chy9f7)
                              |j $ {} (:text |store) (:type :leaf) (:at 1530686613434) (:by |root) (:id |SJwhq2k5f7)
                            :type :expr
                            :at 1530686611115
                            :by |root
                            :id |S1o5nk5z7
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1530686623426) (:by |root) (:id |r1wjh19zX)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:bottom?) (:type :leaf) (:at 1530686626243) (:by |root) (:id |Hy_ohkcM7)
                                  |j $ {} (:text |false) (:type :leaf) (:at 1530687348405) (:by |root) (:id |SkE9ink9zX)
                                :type :expr
                                :at 1530686623671
                                :by |root
                                :id |Hye_j3yqf7
                            :type :expr
                            :at 1530686623074
                            :by |root
                            :id |H1lPonJ5zQ
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1530686629989) (:by |root) (:id |S1-2s2k5fXleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |info) (:type :leaf) (:at 1530686631050) (:by |root) (:id |SkZCjhy5Gm)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1530686631904) (:by |root) (:id |HyXk2319Mm)
                                :type :expr
                                :at 1530686630374
                                :by |root
                                :id |rkMRsnyqz7
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1530686635372) (:by |root) (:id |Skz23y5Mmleaf)
                                  |j $ {} (:text |action/remove-one) (:type :leaf) (:at 1530686642758) (:by |root) (:id |By4hnJ5fX)
                                  |r $ {} (:text |info) (:type :leaf) (:at 1530686644209) (:by |root) (:id |Hyein2ycGQ)
                                :type :expr
                                :at 1530686633647
                                :by |root
                                :id |Skz23y5Mm
                            :type :expr
                            :at 1530686628361
                            :by |root
                            :id |S1-2s2k5fX
                        :type :expr
                        :at 1530686553505
                        :by |root
                        :id |BkxWPh19zQ
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root) (:id |rJgM6oE5f)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root) (:id |H1fGajVqz)
                          |T $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |comp-reel) (:time 1507461815046) (:type :leaf) (:id |rJc29KD2-leaf)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1629576261621) (:by |rJG4IHzWf)
                                  |T $ {} (:author |root) (:text |states) (:time 1509727101297) (:type :leaf) (:id |B1BYoG90Z)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1629576262402) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629576260970
                                :by |rJG4IHzWf
                              |j $ {} (:author |root) (:text |reel) (:time 1507461840459) (:type :leaf) (:id |rJx_05Fw3Z)
                              |r $ {} (:author |root)
                                :data $ {}
                                  |T $ {} (:author |root) (:text |{}) (:time 1507461841342) (:type :leaf) (:id |Bkt05FDhW)
                                :time 1507461840980
                                :type :expr
                                :id |B1xKR5Fw3b
                            :time 1507461809635
                            :type :expr
                            :id |rJc29KD2-
                        :type :expr
                        :at 1521954055333
                        :by |root
                        :id |SyWJfaiV5z
                    :time 1499755354983
                    :type :expr
                    :id |SyWfsuY5THW
                :time 1507461832154
                :type :expr
                :id |r1-eRcYv3-
            :time 1499755354983
            :type :expr
            :id |BJ2WiOF9pBW
          |comp-icon $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1530679091166) (:by |root) (:id |r1z5V1RtMQ)
              |j $ {} (:text |comp-icon) (:type :leaf) (:at 1530679090028) (:by |root) (:id |B1Qc4J0tMX)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |icon-name) (:type :leaf) (:at 1530679094032) (:by |root) (:id |BJe3NyCFfX)
                  |j $ {} (:text |code) (:type :leaf) (:at 1530679094532) (:by |root) (:id |HJEAEyCKzm)
                :type :expr
                :at 1530679090028
                :by |root
                :id |BkNcVJRtGm
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1530679095784) (:by |root) (:id |HkZ1r1AKGXleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1530679146018) (:by |root) (:id |Byx-uyCKGm)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:class-name) (:type :leaf) (:at 1530689549755) (:by |root) (:id |rkxMGdxcGQleaf)
                          |j $ {} (:text "|\"cell-container") (:type :leaf) (:at 1530689554771) (:by |root) (:id |rJM8Mux5zX)
                        :type :expr
                        :at 1530689546432
                        :by |root
                        :id |rkxMGdxcGQ
                    :type :expr
                    :at 1530679154590
                    :by |root
                    :id |Hkj_yRFM7
                  |n $ {}
                    :data $ {}
                      |D $ {} (:text |create-element) (:type :leaf) (:at 1629576275738) (:by |rJG4IHzWf)
                      |T $ {} (:text |:i) (:type :leaf) (:at 1629576276961) (:by |rJG4IHzWf) (:id |HylGDmCKzmleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1530680155186) (:by |root) (:id |HkXwQCtf7)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1530680163929) (:by |root) (:id |HyluPXRKMQleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |str) (:type :leaf) (:at 1530680165562) (:by |root) (:id |r1ZnDQCFfm)
                                  |j $ {} (:text "|\"cell-icon fa fa-") (:type :leaf) (:at 1530689563295) (:by |root) (:id |H1yu7AYz7)
                                  |r $ {} (:text |code) (:type :leaf) (:at 1530680171684) (:by |root) (:id |S1gQOmRtMQ)
                                :type :expr
                                :at 1530680165104
                                :by |root
                                :id |rkTP7AYMX
                            :type :expr
                            :at 1530680160436
                            :by |root
                            :id |HyluPXRKMQ
                        :type :expr
                        :at 1530680154872
                        :by |root
                        :id |ByeQwQ0tM7
                    :type :expr
                    :at 1530680153840
                    :by |root
                    :id |Hym2dJcz7
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |span) (:type :leaf) (:at 1530685667613) (:by |root) (:id |rypA_15Mmleaf)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |{}) (:type :leaf) (:at 1530685669238) (:by |root) (:id |HyxpkFJqM7)
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |:inner-text) (:type :leaf) (:at 1530685673195) (:by |root) (:id |HJWJlt15Gm)
                              |T $ {} (:text |icon-name) (:type :leaf) (:at 1530685656934) (:by |root) (:id |HyJ1FJqfQ)
                            :type :expr
                            :at 1530685670637
                            :by |root
                            :id |Bkg1xFy5G7
                          |b $ {}
                            :data $ {}
                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1530689567397) (:by |root) (:id |HJxU7dl5zmleaf)
                              |j $ {} (:text "|\"cell-name") (:type :leaf) (:at 1530689569762) (:by |root) (:id |HydQue9zm)
                            :type :expr
                            :at 1530689565943
                            :by |root
                            :id |HJxU7dl5zm
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1530686114630) (:by |root) (:id |rJuiqkcGmleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1530686278737) (:by |root) (:id |rklAHoyczQ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1530686280518) (:by |root) (:id |SJ-yLjJ5Mm)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1530686282268) (:by |root) (:id |rkeZ8iyqzm)
                                    :type :expr
                                    :at 1530686279415
                                    :by |root
                                    :id |B1z1UsyczX
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |copy-text!) (:type :leaf) (:at 1530687083028) (:by |root) (:id |BkrZm_019M7)
                                      |j $ {} (:text |icon-name) (:type :leaf) (:at 1530687113588) (:by |root) (:id |Syg-qAk5G7)
                                      |r $ {} (:text |d!) (:type :leaf) (:at 1530687152212) (:by |root) (:id |rkgDnRJcfX)
                                    :type :expr
                                    :at 1530687110292
                                    :by |root
                                    :id |Hkg0t0k9M7
                                :type :expr
                                :at 1530686278455
                                :by |root
                                :id |rkZRHokcf7
                            :type :expr
                            :at 1530686111857
                            :by |root
                            :id |rJuiqkcGm
                        :type :expr
                        :at 1530685668563
                        :by |root
                        :id |rkaJKkqfX
                    :type :expr
                    :at 1530685652520
                    :by |root
                    :id |rypA_15Mm
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |span) (:type :leaf) (:at 1530685676880) (:by |root) (:id |BJrFUkRtMQleaf)
                      |b $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1530685677727) (:by |root) (:id |S1XBlYJqGQ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:inner-text) (:type :leaf) (:at 1530685682626) (:by |root) (:id |S1uxKk5fQ)
                              |j $ {} (:text |code) (:type :leaf) (:at 1530685684520) (:by |root) (:id |H1xslKk9Gm)
                            :type :expr
                            :at 1530685680427
                            :by |root
                            :id |SJeOgFkcz7
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1530689575605) (:by |root) (:id |BJamul9G7leaf)
                              |j $ {} (:text "|\"cell-code") (:type :leaf) (:at 1530689577740) (:by |root) (:id |H1xxNdgcz7)
                            :type :expr
                            :at 1530689572618
                            :by |root
                            :id |BJamul9G7
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1530686114630) (:by |root) (:id |rJuiqkcGmleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1530686278737) (:by |root) (:id |rklAHoyczQ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1530686280518) (:by |root) (:id |SJ-yLjJ5Mm)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1530686282268) (:by |root) (:id |rkeZ8iyqzm)
                                    :type :expr
                                    :at 1530686279415
                                    :by |root
                                    :id |B1z1UsyczX
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |copy-text!) (:type :leaf) (:at 1530687118909) (:by |root) (:id |HyULjk5GXleaf)
                                      |j $ {} (:text |code) (:type :leaf) (:at 1530686365187) (:by |root) (:id |ryQ_Uj15M7)
                                      |r $ {} (:text |d!) (:type :leaf) (:at 1530687154009) (:by |root) (:id |Bkx530Jqfm)
                                    :type :expr
                                    :at 1530686285656
                                    :by |root
                                    :id |HyULjk5GX
                                :type :expr
                                :at 1530686278455
                                :by |root
                                :id |rkZRHokcf7
                            :type :expr
                            :at 1530686111857
                            :by |root
                            :id |r1xQooycfQ
                        :type :expr
                        :at 1530685677402
                        :by |root
                        :id |BJESeFy5Mm
                    :type :expr
                    :at 1530679121441
                    :by |root
                    :id |BJrFUkRtMQ
                :type :expr
                :at 1530679095076
                :by |root
                :id |HkZ1r1AKGX
            :type :expr
            :at 1530679090028
            :by |root
            :id |rJZqNk0YGQ
          |copy-text! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1530687099589) (:by |root) (:id |SJW7uRJcGX)
              |j $ {} (:text |copy-text!) (:type :leaf) (:at 1530687083028) (:by |root) (:id |SJfXd0k5fQ)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1530687086772) (:by |root) (:id |HkeHu01cGX)
                  |j $ {} (:text |d!) (:type :leaf) (:at 1530687147720) (:by |root) (:id |Hkxmn0y9f7)
                :type :expr
                :at 1530687085300
                :by |root
                :id |SJZru019f7
              |p $ {}
                :data $ {}
                  |T $ {} (:text |copy) (:type :leaf) (:at 1530697496398) (:by |root) (:id |rJe1XDG9fQleaf)
                  |j $ {} (:text |text) (:type :leaf) (:at 1530697497579) (:by |root) (:id |Hke-mPz5z7)
                :type :expr
                :at 1530697494921
                :by |root
                :id |rJe1XDG9fQ
              |r $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1530687083028) (:by |root) (:id |ryV7dAy5MQ)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |token) (:type :leaf) (:at 1530687083028) (:by |root) (:id |BJPm_AJ9zX)
                          |j $ {}
                            :data $ {}
                              |j $ {} (:text |shortid/generate) (:type :leaf) (:at 1629576464489) (:by |rJG4IHzWf) (:id |BJ9XdA19G7)
                            :type :expr
                            :at 1530687083028
                            :by |root
                            :id |SJOmdRJ5zm
                        :type :expr
                        :at 1530687083028
                        :by |root
                        :id |HJ8XdAkqzm
                    :type :expr
                    :at 1530687083028
                    :by |root
                    :id |SySQO0ycMQ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |d!) (:type :leaf) (:at 1530687083028) (:by |root) (:id |S1hXd0k9fX)
                      |j $ {} (:text |action/create) (:type :leaf) (:at 1530687083028) (:by |root) (:id |SJ6Xd015M7)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1530687083028) (:by |root) (:id |B1Jx7OAJ5zX)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:text) (:type :leaf) (:at 1530687083028) (:by |root) (:id |H1ZgmO0J5MQ)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |str) (:type :leaf) (:at 1530687083028) (:by |root) (:id |H1memuCy9Gm)
                                  |j $ {} (:text "|\"Copied: ") (:type :leaf) (:at 1530687083028) (:by |root) (:id |H1NgmdCJ5zQ)
                                  |r $ {} (:text |text) (:type :leaf) (:at 1530687088910) (:by |root) (:id |rkrxQuCJqzX)
                                :type :expr
                                :at 1530687083028
                                :by |root
                                :id |rJMg7_R1cGm
                            :type :expr
                            :at 1530687083028
                            :by |root
                            :id |HJxlXdR15zQ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:token) (:type :leaf) (:at 1530687083028) (:by |root) (:id |B1wg7d015G7)
                              |j $ {} (:text |token) (:type :leaf) (:at 1530687094249) (:by |root) (:id |r1_lmd0kqzm)
                            :type :expr
                            :at 1530687083028
                            :by |root
                            :id |HkUg7_01qMm
                        :type :expr
                        :at 1530687083028
                        :by |root
                        :id |rkAXuRy5fX
                    :type :expr
                    :at 1530687083028
                    :by |root
                    :id |Ski7_0k9Mm
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1530687083028) (:by |root) (:id |Hk9xm_RkqGX)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |\) (:type :leaf) (:at 1629576454616) (:by |rJG4IHzWf) (:id |HJnlmdR19zX)
                          |j $ {} (:text |d!) (:type :leaf) (:at 1530687083028) (:by |root) (:id |SJTgXd0J5zX)
                          |r $ {} (:text |action/remove-one) (:type :leaf) (:at 1530687083028) (:by |root) (:id |r10x7_RJ9M7)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1530687083028) (:by |root) (:id |SJx-mdAk5fm)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:token) (:type :leaf) (:at 1530687083028) (:by |root) (:id |SJfZ7_01qG7)
                                  |j $ {} (:text |token) (:type :leaf) (:at 1530687095501) (:by |root) (:id |BkXbXdC19zX)
                                :type :expr
                                :at 1530687083028
                                :by |root
                                :id |ryW-m_015GQ
                            :type :expr
                            :at 1530687083028
                            :by |root
                            :id |BykbmuC1qMm
                        :type :expr
                        :at 1530687083028
                        :by |root
                        :id |HJjeQ_Ry5zQ
                      |r $ {} (:text |2000) (:type :leaf) (:at 1530687083028) (:by |root) (:id |B1NZ7_CJ5MX)
                    :type :expr
                    :at 1530687083028
                    :by |root
                    :id |ryteQOAycGQ
                :type :expr
                :at 1530687083028
                :by |root
                :id |rJQ7OAyqfQ
            :type :expr
            :at 1530687083028
            :by |root
            :id |SkgQdAJqGm
          |comp-header $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1530687535085) (:by |root) (:id |rJWs-ex5fX)
              |j $ {} (:text |comp-header) (:type :leaf) (:at 1530687491395) (:by |root) (:id |SJzi-xxcfX)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |content) (:type :leaf) (:at 1530687583822) (:by |root) (:id |Sk4Egl5z7)
                :type :expr
                :at 1530687493497
                :by |root
                :id |BkWTble9Gm
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1530687491395) (:by |root) (:id |S1Nj-glczm)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1530687491395) (:by |root) (:id |SJUjWlgqzm)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1530687491395) (:by |root) (:id |SkdsblecfQ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1530687491395) (:by |root) (:id |ry9iWegczX)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1530687491395) (:by |root) (:id |Sy2s-ex9fQ)
                                  |j $ {} (:text |16) (:type :leaf) (:at 1530687491395) (:by |root) (:id |BJajbll5MX)
                                :type :expr
                                :at 1530687491395
                                :by |root
                                :id |BkiiblxcGm
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:border-bottom) (:type :leaf) (:at 1530687491395) (:by |root) (:id |ByyejWxl9zm)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |str) (:type :leaf) (:at 1530687491395) (:by |root) (:id |By-esWlx9MQ)
                                      |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1530687491395) (:by |root) (:id |H1fxsbegqzQ)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1530687491395) (:by |root) (:id |Sy4gj-ggqzX)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1530687491395) (:by |root) (:id |rkSxjbex9Mm)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1530687491395) (:by |root) (:id |B1UgiWle9GQ)
                                          |v $ {} (:text |96) (:type :leaf) (:at 1530687491395) (:by |root) (:id |S1wxobee9MQ)
                                        :type :expr
                                        :at 1530687491395
                                        :by |root
                                        :id |SJ7lo-xx5GQ
                                    :type :expr
                                    :at 1530687491395
                                    :by |root
                                    :id |BkexoZgecMQ
                                :type :expr
                                :at 1530687491395
                                :by |root
                                :id |HJAoblx9zQ
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:text-align) (:type :leaf) (:at 1530687491395) (:by |root) (:id |SkFejZeg5Gm)
                                  |j $ {} (:text |:center) (:type :leaf) (:at 1530687491395) (:by |root) (:id |BJ5xjbeeqMm)
                                :type :expr
                                :at 1530687491395
                                :by |root
                                :id |rydxjZxxczm
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |HJti-le9zm
                        :type :expr
                        :at 1530687491395
                        :by |root
                        :id |rkwj-ex5fm
                    :type :expr
                    :at 1530687491395
                    :by |root
                    :id |BkBjZll5MX
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1530687491395) (:by |root) (:id |SJ2xi-gg9Gm)
                      |j $ {} (:text "|\"FontAwesome 4.7 icons") (:type :leaf) (:at 1530687491395) (:by |root) (:id |rkalobxl5zm)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1530687491395) (:by |root) (:id |rkkbibeecfX)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1530687491395) (:by |root) (:id |rJZ-s-ex5GX)
                              |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1530687491395) (:by |root) (:id |r1M-oblxcfX)
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |HklZs-eeqzX
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:font-size) (:type :leaf) (:at 1530687491395) (:by |root) (:id |rJ4ZjZlx5z7)
                              |j $ {} (:text |16) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HJHZjZleqfQ)
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |B1QWoZlxcz7
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:font-weight) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HJw-o-ge5M7)
                              |j $ {} (:text |300) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HJOZs-ggqGX)
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |B1IbjbgeczX
                        :type :expr
                        :at 1530687491395
                        :by |root
                        :id |H1RgoWlg5MX
                    :type :expr
                    :at 1530687491395
                    :by |root
                    :id |HyigiZlgqGX
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1530687491395) (:by |root) (:id |BJcbibxlcGm)
                      |j $ {} (:text |16) (:type :leaf) (:at 1530687491395) (:by |root) (:id |rJjWsZge9z7)
                      |r $ {} (:text |nil) (:type :leaf) (:at 1530687491395) (:by |root) (:id |BknZo-xeqfQ)
                    :type :expr
                    :at 1530687491395
                    :by |root
                    :id |HyFZsWxeqGm
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |input) (:type :leaf) (:at 1530687491395) (:by |root) (:id |rkC-o-xl5MX)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1530687491395) (:by |root) (:id |BJlfi-xl9GX)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HJzzibge9GX)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1530687491395) (:by |root) (:id |H14fs-elcfm)
                                  |j $ {} (:text |ui/input) (:type :leaf) (:at 1530687491395) (:by |root) (:id |B1SziZee9fQ)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1530687491395) (:by |root) (:id |BkvzibgxqGX)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1530687491395) (:by |root) (:id |SyFGsWll9z7)
                                          |j $ {} (:text |400) (:type :leaf) (:at 1530687491395) (:by |root) (:id |By9MsZxecMX)
                                        :type :expr
                                        :at 1530687491395
                                        :by |root
                                        :id |B1dfo-leqMm
                                    :type :expr
                                    :at 1530687491395
                                    :by |root
                                    :id |rkLfiWgecMm
                                :type :expr
                                :at 1530687491395
                                :by |root
                                :id |HJ7fsbegcMX
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |rJ-GsWeeczQ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:value) (:type :leaf) (:at 1530687491395) (:by |root) (:id |Sk2fsZel5fQ)
                              |j $ {} (:text |content) (:type :leaf) (:at 1530687591425) (:by |root) (:id |HkWRPxxqzQ)
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |rJoGo-le9fQ
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:placeholder) (:type :leaf) (:at 1530687491395) (:by |root) (:id |H1ZQibgx5zm)
                              |j $ {} (:text "|\"Filter...") (:type :leaf) (:at 1530687491395) (:by |root) (:id |HJGQoZxxcz7)
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |H1lmiZgxcM7
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |:on-input) (:type :leaf) (:at 1530687491395) (:by |root) (:id |ry4moZlxcfX)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1530687491395) (:by |root) (:id |H1UXjZlg9GX)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HydXo-elczQ)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1530687491395) (:by |root) (:id |HkYXoWlx5Mm)
                                    :type :expr
                                    :at 1530687491395
                                    :by |root
                                    :id |BJPXo-ex5GQ
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1530687594935) (:by |root) (:id |Sy2Xobll9MX)
                                      |j $ {} (:text |:content) (:type :leaf) (:at 1530687595818) (:by |root) (:id |S1bm_xe5fQ)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:value) (:type :leaf) (:at 1530687598217) (:by |root) (:id |ByHdxl5GQ)
                                          |j $ {} (:text |e) (:type :leaf) (:at 1530687598519) (:by |root) (:id |SJSUdeeczX)
                                        :type :expr
                                        :at 1530687597445
                                        :by |root
                                        :id |r1xHuglcz7
                                    :type :expr
                                    :at 1530687491395
                                    :by |root
                                    :id |Syjmobeg5fQ
                                :type :expr
                                :at 1530687491395
                                :by |root
                                :id |H1S7sbxg9G7
                            :type :expr
                            :at 1530687491395
                            :by |root
                            :id |rJ7Qi-gxqGm
                        :type :expr
                        :at 1530687491395
                        :by |root
                        :id |HkJMsWlxcGm
                    :type :expr
                    :at 1530687491395
                    :by |root
                    :id |SyTWoZleqzm
                :type :expr
                :at 1530687491395
                :by |root
                :id |Symjbxl5fQ
            :type :expr
            :at 1530687491395
            :by |root
            :id |rylobelcGm
          |icons-dict $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1530679001528) (:by |root) (:id |SJWbkJAFfm)
              |j $ {} (:text |icons-dict) (:type :leaf) (:at 1530679000855) (:by |root) (:id |BkMWy1AFzm)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |to-calcit-data) (:type :leaf) (:at 1629576430557) (:by |rJG4IHzWf) (:id |BJzGkJRYGQ)
                  |j $ {} (:text |icons) (:type :leaf) (:at 1554787722433) (:by |rJG4IHzWf) (:id |cTuwNU916)
                :type :expr
                :at 1530679000855
                :by |root
                :id |SJmZ1JAFzm
            :type :expr
            :at 1530679000855
            :by |root
            :id |BJe-kyAYf7
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |rJgjuY5pSb)
            |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1536136798071) (:by |rJG4IHzWf) (:id |vJRcX83AOleaf)
                    |j $ {} (:text "|\"fuzzy") (:type :leaf) (:at 1536136798929) (:by |rJG4IHzWf) (:id |l4M7UVUNjM)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1536136799524) (:by |rJG4IHzWf) (:id |83p80EnEyP)
                    |v $ {} (:text |fuzzy) (:type :leaf) (:at 1536136799910) (:by |rJG4IHzWf) (:id |5MjfiYHo0w)
                  :type :expr
                  :at 1536136797688
                  :by |rJG4IHzWf
                  :id |vJRcX83AO
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root) (:id |ryKcErMdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root) (:id |HJMtqNBGuf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root) (:id |Syl69VHMuM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root) (:id |HJwaqVHM_M)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root) (:id |BJf0cVSMdz)
                      :type :expr
                      :at 1519699093683
                      :by |root
                      :id |S1R54BfuG
                  :type :expr
                  :at 1519699088529
                  :by |root
                  :id |ryKcErMdG
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root) (:id |SJxSfaoE5fleaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root) (:id |rkb8MTo45G)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root) (:id |H1SuzTjV5M)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root) (:id |S1MtGTiE5G)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root) (:id |HkUKG6oNcG)
                      :type :expr
                      :at 1521954065004
                      :by |root
                      :id |S1QtM6j4cz
                  :type :expr
                  :at 1521954061310
                  :by |root
                  :id |SJxSfaoE5f
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530678726115) (:by |root) (:id |B1CTpaYMmleaf)
                    |j $ {} (:text "|\"../js/icons") (:type :leaf) (:at 1629576750242) (:by |rJG4IHzWf) (:id |SkJCTatMX)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1629576492660) (:by |rJG4IHzWf) (:id |S1lRpaFMQ)
                    |v $ {} (:text |icons) (:type :leaf) (:at 1530678729587) (:by |root) (:id |r1Z06pYMX)
                  :type :expr
                  :at 1530678725565
                  :by |root
                  :id |B1CTpaYMm
                |yt $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530686272176) (:by |root) (:id |BJwHjyqfQleaf)
                    |j $ {} (:text "|\"copy-text-to-clipboard") (:type :leaf) (:at 1530686273194) (:by |root) (:id |HJQdro1qGQ)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1629576292592) (:by |rJG4IHzWf) (:id |B1ztSj1qfQ)
                    |v $ {} (:text |copy) (:type :leaf) (:at 1530686275217) (:by |root) (:id |BJf9Ssk9GQ)
                  :type :expr
                  :at 1530686270619
                  :by |root
                  :id |BJwHjyqfQ
                |yu $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530687127487) (:by |root) (:id |SJ-Jj01qMQleaf)
                    |j $ {} (:text "|\"shortid") (:type :leaf) (:at 1530687128892) (:by |root) (:id |ByloCkqz7)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1530687130904) (:by |root) (:id |BkmbsCycfm)
                    |v $ {} (:text |shortid) (:type :leaf) (:at 1530687135296) (:by |root) (:id |SylSjCJcM7)
                  :type :expr
                  :at 1530687127179
                  :by |root
                  :id |SJ-Jj01qMQ
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530679687645) (:by |root) (:id |r1xJq-RFM7leaf)
                    |j $ {} (:text |clojure.string) (:type :leaf) (:at 1530679691186) (:by |root) (:id |HJZgcb0tMQ)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1530679692215) (:by |root) (:id |SyLm9WCYzX)
                    |v $ {} (:text |string) (:type :leaf) (:at 1530679692951) (:by |root) (:id |SyVEqb0YG7)
                  :type :expr
                  :at 1530679687320
                  :by |root
                  :id |r1xJq-RFM7
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530686646588) (:by |root) (:id |HklA2hJcMQleaf)
                    |j $ {} (:text |respo-message.comp.messages) (:type :leaf) (:at 1530686678863) (:by |root) (:id |r1Zy6n1qfQ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1530686653572) (:by |root) (:id |rkWm6hk5Gm)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1530686654018) (:by |root) (:id |Bkl8a215f7)
                        |j $ {} (:text |comp-messages) (:type :leaf) (:at 1530686658473) (:by |root) (:id |BkV8p3Jcz7)
                      :type :expr
                      :at 1530686653805
                      :by |root
                      :id |HJWLa3k5f7
                  :type :expr
                  :at 1530686646193
                  :by |root
                  :id |HklA2hJcMQ
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530686659640) (:by |root) (:id |BkWs6nkcMQleaf)
                    |j $ {} (:text |respo-message.action) (:type :leaf) (:at 1530686689999) (:by |root) (:id |Hk-nT3y5G7)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1530686665235) (:by |root) (:id |BJfgAnJ9zX)
                    |v $ {} (:text |action) (:type :leaf) (:at 1530686666126) (:by |root) (:id |rkE-02kqfQ)
                  :type :expr
                  :at 1530686659325
                  :by |root
                  :id |BkWs6nkcMQ
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1629576232967) (:by |rJG4IHzWf)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkLgidF56rb)
                        |j $ {} (:author |root) (:text |hsl) (:time 1499755354983) (:type :leaf) (:id |SkPxidY56H-)
                      :time 1499755354983
                      :type :expr
                      :id |SyHeiOYcTr-
                  :time 1499755354983
                  :type :expr
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1554786253697) (:by |rJG4IHzWf) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |qT $ {} (:text |list->) (:type :leaf) (:at 1530679034866) (:by |root) (:id |SygMb1CtfQ)
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1530679519258) (:by |root) (:id |rJlI1b0Kz7)
                        |yj $ {} (:text |create-element) (:type :leaf) (:at 1629576284263) (:by |rJG4IHzWf) (:id |Bkx4IXCKMQ)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |n $ {} (:author |root) (:text |>>) (:time 1509727116530) (:type :leaf) (:at 1629576288643) (:by |rJG4IHzWf) (:id |BJlz9oM90-)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
                |y $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507461846175) (:type :leaf) (:id |SkACcYv2-leaf)
                    |j $ {} (:author |root) (:text |reel.comp.reel) (:time 1507461855480) (:type :leaf) (:id |HJfRR5KPh-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507461856264) (:type :leaf) (:id |ryOyjtwnb)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507461856706) (:type :leaf) (:id |HJ8u1otP3W)
                        |j $ {} (:author |root) (:text |comp-reel) (:time 1507461858342) (:type :leaf) (:id |r1bt1sKwhZ)
                      :time 1507461856484
                      :type :expr
                      :id |BJwOyitPhW
                  :time 1507461845717
                  :type :expr
                  :id |SkACcYv2-
              :time 1499755354983
              :type :expr
              :id |SJkgodY9TSW
          :time 1499755354983
          :type :expr
          :id |H1o_Y9ar-
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |ryBoejdY5arb)
              |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |H1Iils_Y96BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bkuogo_F9pr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1499755354983) (:type :leaf) (:id |By5oeoOY5pBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Hyhixo_F9prb)
                        :time 1499755354983
                        :type :expr
                        :id |H1iieoOKqTSZ
                    :time 1499755354983
                    :type :expr
                    :id |BkYogiuK9TBZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359514709) (:type :leaf) (:id |BJ0oxjdFq6rb)
                      |j $ {} (:author |rJG4IHzWf) (:text ||) (:time 1512359516026) (:type :leaf) (:id |BJy2go_tcaBZ)
                    :time 1499755354983
                    :type :expr
                    :id |B1aixsdK9pHb
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:messages) (:type :leaf) (:at 1530686618573) (:by |root) (:id |HyZbj2Jqzmleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1530686619338) (:by |root) (:id |Hylmo3y5fQ)
                        :type :expr
                        :at 1530686618950
                        :by |root
                        :id |HkZXohy9fX
                    :type :expr
                    :at 1530686617307
                    :by |root
                    :id |HyZbj2Jqzm
                :time 1499755354983
                :type :expr
                :id |ryviloOFc6B-
            :time 1499755354983
            :type :expr
            :id |HkEjgouFcpBW
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rkmjesdF9Trb
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |HyWslouK56HZ)
            |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |SkGsgsOtcTBb)
          :time 1499755354983
          :type :expr
          :id |rJxieodtqarW
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |H1U1esuY5TBZ)
              |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJwJxj_Y5aHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |r1YyxidF96rW)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |r1cJxouK5aSZ)
                  |r $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |Bkj1ljdY5Tr-)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root) (:id |S1gUCbfy_G)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root) (:id |ryzsAWMkdG)
                :time 1499755354983
                :type :expr
                :id |SkdkeiOK5TBZ
              |v $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1530686773045) (:by |root) (:id |H1x_-6J5zQ)
                  |L $ {}
                    :data $ {}
                      |j $ {} (:text |action/message-action?) (:type :leaf) (:at 1530686830587) (:by |root) (:id |rkXfpJqzQ)
                      |r $ {} (:text |op) (:type :leaf) (:at 1530686736595) (:by |root) (:id |Bygufp1cz7)
                    :type :expr
                    :at 1530686725896
                    :by |root
                    :id |HJlRb615fX
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |update) (:type :leaf) (:at 1530686742395) (:by |root) (:id |r1sz61qM7)
                      |j $ {} (:text |store) (:type :leaf) (:at 1530686746343) (:by |root) (:id |SJbX6yqfX)
                      |r $ {} (:text |:messages) (:type :leaf) (:at 1530686750590) (:by |root) (:id |H1mmT1qMX)
                      |v $ {}
                        :data $ {}
                          |yT $ {} (:text |op-id) (:type :leaf) (:at 1530686765018) (:by |root) (:id |HkWNE6JqM7)
                          |yj $ {} (:text |op-time) (:type :leaf) (:at 1530686767983) (:by |root) (:id |B1LVTJ5Mm)
                          |T $ {} (:text |\) (:type :leaf) (:at 1629576479740) (:by |rJG4IHzWf) (:id |rkWvmTJqf7)
                          |j $ {} (:text |update-messages) (:type :leaf) (:at 1530686805609) (:by |root) (:id |BkzumaJcMm)
                          |r $ {} (:text |%) (:type :leaf) (:at 1530686760810) (:by |root) (:id |B1eVpk5zX)
                          |v $ {} (:text |op) (:type :leaf) (:at 1530686761637) (:by |root) (:id |Syx-4akqzX)
                          |x $ {} (:text |op-data) (:type :leaf) (:at 1530686762874) (:by |root) (:id |r1ZfETy9fX)
                        :type :expr
                        :at 1530686751284
                        :by |root
                        :id |rJGPmTy5zQ
                    :type :expr
                    :at 1530686744473
                    :by |root
                    :id |r1-gQ6yqGm
                  |h $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |case-default) (:time 1499755354983) (:type :leaf) (:at 1629576304574) (:by |rJG4IHzWf) (:id |ry61gjOFqpH-)
                      |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyAylout56Hb)
                      |l $ {}
                        :data $ {}
                          |D $ {} (:text |do) (:type :leaf) (:at 1629576308165) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |println) (:type :leaf) (:at 1629576309219) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"Unknown op:") (:type :leaf) (:at 1629576312237) (:by |rJG4IHzWf)
                              |r $ {} (:text |op) (:type :leaf) (:at 1629576312936) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629576308437
                            :by |rJG4IHzWf
                          |T $ {} (:text |store) (:type :leaf) (:at 1629576305339) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629576306149
                        :by |rJG4IHzWf
                      |n $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |:states) (:time 1507399855618) (:type :leaf) (:id |HJxX2OqUh-)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |update-states) (:time 1507399857991) (:type :leaf) (:at 1629576326143) (:by |rJG4IHzWf) (:id |rylOn_5I2Z)
                              |j $ {} (:author |root) (:text |store) (:time 1507399858922) (:type :leaf) (:id |ByE92uq82b)
                              |n $ {} (:text |op-data) (:type :leaf) (:at 1629576329246) (:by |rJG4IHzWf)
                            :time 1507399856471
                            :type :expr
                            :id |Sk-_hdqU2b
                        :time 1507399852251
                        :type :expr
                        :id |ryNh_5L3b
                      |r $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359657160) (:type :leaf) (:id |S1lxeout56HW)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                              |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                              |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359660859) (:type :leaf) (:id |HkNexodK9Tr-)
                              |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                            :time 1499755354983
                            :type :expr
                            :id |SJ-gxidtcTrZ
                        :time 1499755354983
                        :type :expr
                        :id |S1kexiuF9arZ
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root) (:id |SkNl1ac8zleaf)
                          |j $ {} (:text |op-data) (:type :leaf) (:at 1518157553355) (:by |root) (:id |SJzueyp5Iz)
                        :type :expr
                        :at 1518157547521
                        :by |root
                        :id |SkNl1ac8z
                    :time 1499755354983
                    :type :expr
                    :id |HyWGSpJcG7
                :type :expr
                :at 1530686720028
                :by |root
                :id |rkdbpk5f7
            :time 1499755354983
            :type :expr
            :id |SkS1lout5aBb
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |HJ41lsuY5pSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |SkG1lo_t9pHZ)
            |j $ {} (:author |root) (:text |app.updater) (:time 1499755354983) (:type :leaf) (:id |B17kxjdFq6r-)
            |r $ {} (:author |root)
              :data $ {}
                |T $ {} (:author |root) (:text |:require) (:time 1507399864640) (:type :leaf) (:id |H1xR2d5Uh-)
                |j $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399865654) (:type :leaf) (:id |rkf-6u9InW)
                    |j $ {} (:author |root) (:text |respo.cursor) (:time 1507399873143) (:type :leaf) (:id |Hkefpu983W)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399874041) (:type :leaf) (:id |rkrYaO5UnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399874938) (:type :leaf) (:id |BJBqpOq8hZ)
                        |j $ {} (:author |root) (:text |update-states) (:time 1507399875675) (:type :leaf) (:at 1629576321182) (:by |rJG4IHzWf) (:id |rJbi6_c83-)
                      :time 1507399874214
                      :type :expr
                      :id |BkUcpdc83b
                  :time 1507399864883
                  :type :expr
                  :id |r17bT_cLnZ
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530686782698) (:by |root) (:id |BkgSHTJczmleaf)
                    |j $ {} (:text |respo-message.action) (:type :leaf) (:at 1530686787187) (:by |root) (:id |HyWwBay5MQ)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1530686789900) (:by |root) (:id |r1BsSa19f7)
                    |v $ {} (:text |action) (:type :leaf) (:at 1530686791172) (:by |root) (:id |r1-CSpk5MQ)
                  :type :expr
                  :at 1530686780964
                  :by |root
                  :id |BkgSHTJczm
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1530686793459) (:by |root) (:id |r1WWL6k9MQleaf)
                    |j $ {} (:text |respo-message.updater) (:type :leaf) (:at 1530686813598) (:by |root) (:id |BkfUa1cM7)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1530686796606) (:by |root) (:id |SyVVI6J9z7)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1530686797235) (:by |root) (:id |BJbHUaJczQ)
                        |j $ {} (:text |update-messages) (:type :leaf) (:at 1530686802356) (:by |root) (:id |HJeIITyqMQ)
                      :type :expr
                      :at 1530686797564
                      :by |root
                      :id |rJLLT19M7
                  :type :expr
                  :at 1530686793141
                  :by |root
                  :id |r1WWL6k9MQ
              :time 1507399862664
              :type :expr
              :id |rykTu9L2Z
          :time 1499755354983
          :type :expr
          :id |B1Z1gjdFqaBZ
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |LHG0QpvebIQ)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |NQwMlGodM79)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |0-_nJNh-sWE
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1629576383869) (:by |rJG4IHzWf) (:id |bhYuuMM_DAU)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |gLqiaU9O7yt)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |pHtYOb7aXuA)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |kL3nXMqBVF4)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |JzEOLeWVa7-
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1629576387164) (:by |rJG4IHzWf)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |t9ggHskOND_
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |1lnI_GcwQhr
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |wqFGUOOJtKR)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |cMWhB8gsTDw)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |?) (:type :leaf) (:at 1629576360773) (:by |rJG4IHzWf)
                  |j $ {} (:text |e) (:type :leaf) (:at 1629576361764) (:by |rJG4IHzWf)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |LHsEdj1eUgD
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.setItem) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |fLclGtRQ9of)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |f4Js-5voa1V)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |H5InMvpTBlP)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |4Ga2vzNFbku)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |KTjYn0VC6Zk
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1629576369463) (:by |rJG4IHzWf) (:id |SfDJFzY5GQg)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |ZMZbpxlR2zL)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |0hMz7v-ATuu)
                        :type :expr
                        :at 1554786246852
                        :by |rJG4IHzWf
                        :id |S7cD2LAo3oU
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |hSu2xp4q_IV
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |wQ8RhNYovoL
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |Uo6Sgmzqp1e
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |34r_1hKBhWd)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |b7nyf-Yzzjs)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.querySelector) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Rv3luM8pp8P)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |ofQb5bYRCnm)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |9DKIO4MJOAF)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |fCEv21rwuSS
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |MewgequfvxM
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1629576469455) (:by |rJG4IHzWf) (:id |kNgKdGvqPxR)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |cEmZyl2kyYQ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |->) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |qv-ucFGd4Hj)
                  |j $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |yXPyd2bppaC)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |7oq6jVz5tWB)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |sii0hZp0HId)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |ZogJTuQltFi)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |CPF0eZcz1kJ
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |0i0-KJf0R3Q)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |vm8GcegF5gU)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |InZV7AzKEzR)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |TModaVHRkvv
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |TaiQOsg-ZwR
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |im6YZBeI71X
          |main! $ {}
            :data $ {}
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |xmYcVetNyrz)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |ba3_tfvw4E3)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |7fPdo6m2Yio)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |rblyJ7icYbA)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1629576773183) (:by |rJG4IHzWf)
                          |j $ {} (:text |p) (:type :leaf) (:at 1629576773788) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1554786246852
                        :by |rJG4IHzWf
                        :id |hM4L0y4vuAB
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Y5kkVSOLsft)
                        :type :expr
                        :at 1554786246852
                        :by |rJG4IHzWf
                        :id |hNxaLUmZj01
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |BAKUXuBZII6
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |50-hZpgob3I
              |yj $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Mu2g50AfB_G)
                  |j $ {} (:text ||a) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Lph59kJvHgr)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Lq-5swKSo6Y)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |Ufgt9hN8DiL
              |yr $ {}
                :data $ {}
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |rOI6iiPpXh7)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |8D1Y-DKlgbS)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |5fHtMt-0I0C)
                  |v $ {} (:text |persist-storage!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |MMiO6Zn7fqL)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |2SLNbh5m_EB
              |yx $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |b5ufLyV30PS)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |P3nTQSIUdkx)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |26ruQmLR625)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |-bUklW-_HV_)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |5xog8fbrO0o)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |icVI9oYtvIP)
                                :type :expr
                                :at 1554786246852
                                :by |rJG4IHzWf
                                :id |5Lb7BKChYL9
                            :type :expr
                            :at 1554786246852
                            :by |rJG4IHzWf
                            :id |wodR_NTkY3r
                        :type :expr
                        :at 1554786246852
                        :by |rJG4IHzWf
                        :id |B3_XNhoMhix
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |G2hRGUeEA25
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |go3PeDTZ5pS)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Y0NO9lQyXBX)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |bFHn7z66TEN)
                        :type :expr
                        :at 1554786246852
                        :by |rJG4IHzWf
                        :id |W5VPmTgusDJ
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |pqXJFBYDTdt)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |_zm_4jwwACI)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629576375421) (:by |rJG4IHzWf) (:id |Bw0DzpxdrB3)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |5hkfODN0rUZ)
                            :type :expr
                            :at 1554786246852
                            :by |rJG4IHzWf
                            :id |8o2MoztgsYH
                        :type :expr
                        :at 1554786246852
                        :by |rJG4IHzWf
                        :id |atXQ-mqVcZs
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |fSyeG9SfFh3
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |fQwep3X_hpg
              |yy $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |jULN0f5X8cx)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |6eHe4-Eah1K)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |BcaianKLA7d
              |T $ {} (:text |defn) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |YnU9SbLGRp1)
              |j $ {} (:text |main!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |-OzcsP3qkAO)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |QnUOf7HZuPW
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |tcbgQxyrI4K)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |wDpyb0OLb0D)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |6rvt3irQXKq)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |qov0YtTLJCE)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |fAAwJ3136Cz)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |dFVTa_WxilV)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |cdRjYq30Gtp
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |cjWvJaaPyLU
              |y $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |YElgL0HgGE5)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |rMV9UG5nmGe
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |ppkOw7kdwrs
          |snippets $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Jy5JqAUkOpe)
              |j $ {} (:text |snippets) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |-XNbj-10pY4)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |qLqEsm4dWp0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |b2ogaxhiQu9)
                  |j $ {} (:text |config/cdn?) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |PbT4kOKKQhT)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |3QG4xJxhhUI
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |jyH8OajSOXP
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |SfGlp3Rffk3)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Qook1dFdSv2)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |6JcyCV9oRdu)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |sPDndld-s-3)
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |4rOmYtbfI1W
              |v $ {}
                :data $ {}
                  |T $ {} (:text |when) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |dyV3ccvGTJ3)
                  |j $ {} (:text |config/dev?) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |82vU4XKgJ6J)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |bDozO_X3VLy)
                      |j $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |3yTLvXh1wkz)
                      |r $ {} (:text |op) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |AJuhBY_uxAI)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |3ubD6IhE29x
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |oIzqsMdaewQ
              |x $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |V0uix2jEOF1)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |JinZokIdrhk)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |n_xbAYy_uaA)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |dtzX5dI7LdK)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |gS8EY4XThiu)
                      |v $ {} (:text |op) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |dgNDdkvvBka)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |w6gikJdd2mU)
                    :type :expr
                    :at 1554786246852
                    :by |rJG4IHzWf
                    :id |3Rats1CE7nL
                :type :expr
                :at 1554786246852
                :by |rJG4IHzWf
                :id |kpxG6hN23fs
            :type :expr
            :at 1554786246852
            :by |rJG4IHzWf
            :id |-noKMweoJ8c
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1629576396125
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |nil?) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629576396125
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629576396125
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629576396125
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |reel) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629576396125
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629576396125
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629576396125
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629576396125
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |refresh-reel) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                              |r $ {} (:text |schema/store) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                              |v $ {} (:text |updater) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629576396125
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629576396125
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |hud!) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"ok~") (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"Ok") (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629576396125
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1629576396125
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |hud!) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"error") (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                      |r $ {} (:text |build-errors) (:type :leaf) (:at 1629576396125) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629576396125
                    :by |rJG4IHzWf
                :type :expr
                :at 1629576396125
                :by |rJG4IHzWf
            :type :expr
            :at 1629576396125
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1554786246852
          :by |rJG4IHzWf
          :id |ZaMtGJUEbkA
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |JHvOVa5ZgD)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |WAPzJ_6Hih)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1629576405103) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1629576405103) (:by |rJG4IHzWf)
                    |r $ {} (:text |hud!) (:type :leaf) (:at 1629576405103) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1629576405103
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |6tnLkJhfIjy)
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |9w-RFV6AsCJ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |waEwK7HuRG1)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |VURHaF9KUr6)
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |7SfhzhgX_As)
                        |r $ {} (:text |refresh-reel) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |4xo0vnhUCJH)
                      :type :expr
                      :at 1554786246852
                      :by |rJG4IHzWf
                      :id |vuyZPdIJm9z
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |sap05MPYM1q
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |yzzzlC2Hho7)
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |q6ffNGpok00)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |KiJczaBtr48)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |v-fQ9y448Ni)
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |FOIMc3N3p9m
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |OHZN-JuGnDy)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |zqH1Q98mu0F)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |kAHPThenrMx)
                    |v $ {} (:text |config) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |YWaZjvhlbT2)
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |ru30_lcqHjg
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1629576405103) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1629576405103) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1629576405103) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1629576405103
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |ZxiMFt-0MF)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |byoxdkIF5c)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |r0zhGhD2om)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |VoeQPmmhmZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |MNRudz2PMz)
                        |j $ {} (:text |render!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |1IyFsxs2Fx)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |lLTXz_QDEa)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |fUqx2hIxeB)
                      :type :expr
                      :at 1554786246852
                      :by |rJG4IHzWf
                      :id |TTf0sa7_Po
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |BjK0YHpKXT
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |4bppWo3FRNL)
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |zFa7h2ynSY3)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |XS0pHnqMMiq)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |_MZIKTzk2D9)
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |U_iq7d-uhM6)
                      :type :expr
                      :at 1554786246852
                      :by |rJG4IHzWf
                      :id |aF16PyrHySd
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |ePciFy0RdC
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |R76853y99A1)
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |vbWhdq4WinS)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |jroT1EibOWN)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |ZnPjPoR9Wxn)
                        |j $ {} (:text |updater) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |cs_Kll9xr4M)
                      :type :expr
                      :at 1554786246852
                      :by |rJG4IHzWf
                      :id |6ix07FMlLXc
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |xpiZqNIWony
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |KJ58g96ueXz)
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |rtY54xM5rw5)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |zI7wfxWRQ-2)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |Fm4FPvY5n6b)
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |SQkmIalJ1c1
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |iy5C1lLtRZx)
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |wIj2-dn0MSj)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |sKfc61YVAxP)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |SqVQ8IG0U_h)
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1554786246852) (:by |rJG4IHzWf) (:id |VHcHeYA9jf6)
                      :type :expr
                      :at 1554786246852
                      :by |rJG4IHzWf
                      :id |apiByiYEYFw
                  :type :expr
                  :at 1554786246852
                  :by |rJG4IHzWf
                  :id |r5bWxDAj6PJ
              :type :expr
              :at 1554786246852
              :by |rJG4IHzWf
              :id |lJfAlXUoHN
          :type :expr
          :at 1554786246852
          :by |rJG4IHzWf
          :id |sK5AAKaeSw
      |app.config $ {}
        :defs $ {}
          |cdn? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |SrcpdJcEiU)
              |j $ {} (:text |cdn?) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |sFXH-k4ZiP)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |89q_hIyP8A)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |bqOoJ-DJ5m)
                          |j $ {} (:text |js/window) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |RU8xR2oa0x)
                        :type :expr
                        :at 1554786187351
                        :by |rJG4IHzWf
                        :id |D4l0J2JFjy
                      |j $ {} (:text |false) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |jQRuAws_xa)
                    :type :expr
                    :at 1554786187351
                    :by |rJG4IHzWf
                    :id |mzRTcJPfA6
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |ewEsVJpCoq)
                          |j $ {} (:text |js/process) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |_YbU1XMN0l)
                        :type :expr
                        :at 1554786187351
                        :by |rJG4IHzWf
                        :id |x59bNXdLdG
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |zkRjqqSxHA7)
                          |j $ {} (:text "|\"true") (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |Z4QnlEVPLha)
                          |r $ {} (:text |js/process.env.cdn) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |ISM5qcopaev)
                        :type :expr
                        :at 1554786187351
                        :by |rJG4IHzWf
                        :id |zvQjwmBUVX
                    :type :expr
                    :at 1554786187351
                    :by |rJG4IHzWf
                    :id |-_R4wLvZSo
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:else) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |qQ5f-K2kkOU)
                      |j $ {} (:text |false) (:type :leaf) (:at 1554786187351) (:by |rJG4IHzWf) (:id |oih6JLhHnec)
                    :type :expr
                    :at 1554786187351
                    :by |rJG4IHzWf
                    :id |meT-hyx82nJ
                :type :expr
                :at 1554786187351
                :by |rJG4IHzWf
                :id |lKixZN8ZO2
            :type :expr
            :at 1554786187351
            :by |rJG4IHzWf
            :id |uHOP5Iop0o
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1554786194168) (:by |rJG4IHzWf) (:id |JXY3rLW236)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1554786194168) (:by |rJG4IHzWf) (:id |Nn_v86sQm4)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |=) (:type :leaf) (:at 1629576417425) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629576418474) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |get-env) (:type :leaf) (:at 1629576420166) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"mode") (:type :leaf) (:at 1629576421120) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629576418804
                    :by |rJG4IHzWf
                :type :expr
                :at 1629576417298
                :by |rJG4IHzWf
            :type :expr
            :at 1554786194168
            :by |rJG4IHzWf
            :id |0MtrIQQHLw
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root) (:id |Hy-Of025IG)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root) (:id |SyfufCnc8G)
              |r $ {}
                :data $ {}
                  |wT $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-folder) (:type :leaf) (:at 1528008977180) (:by |root) (:id |H1xHfWfWeXleaf)
                      |j $ {} (:text "|\"tiye.me:cdn/fontawesome-finder") (:type :leaf) (:at 1530687799748) (:by |root) (:id |BySKfbfWx7)
                    :type :expr
                    :at 1528008973460
                    :by |root
                    :id |H1xHfWfWeX
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root) (:id |HJxzN3kyxmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/mvc-works.png") (:type :leaf) (:at 1527868478815) (:by |root) (:id |rJeUB2k1xQ)
                    :type :expr
                    :at 1527868457696
                    :by |root
                    :id |HJxzN3kyxm
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1554786218987) (:by |rJG4IHzWf) (:id |wg12rsyLV2)
                      |j $ {} (:text "|\"fontawesome-finder") (:type :leaf) (:at 1554786227841) (:by |rJG4IHzWf) (:id |ONind8ckdE)
                    :type :expr
                    :at 1554786218987
                    :by |rJG4IHzWf
                    :id |v33RsCRX3u
                  |yr $ {}
                    :data $ {}
                      |T $ {} (:text |:upload-folder) (:type :leaf) (:at 1528009091856) (:by |root) (:id |S1WFZfblQleaf)
                      |j $ {} (:text "|\"tiye.me:repo/jimengio/fontawesome-finder/") (:type :leaf) (:at 1572493827041) (:by |rJG4IHzWf) (:id |rJmnY-f-g7)
                    :type :expr
                    :at 1528009081454
                    :by |root
                    :id |S1WFZfblQ
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root) (:id |HyZ5XCh58M)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root) (:id |HkeSAB3K1Xleaf)
                      |j $ {} (:text "|\"http://localhost:8100/main.css") (:type :leaf) (:at 1527526903571) (:by |root) (:id |Hyx0Arht1X)
                    :type :expr
                    :at 1527526861413
                    :by |root
                    :id |HkeSAB3K1X
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root) (:id |rygq0H3YJmleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf) (:at 1527526887965) (:by |root) (:id |HklT1LntyQ)
                    :type :expr
                    :at 1527526865931
                    :by |root
                    :id |rygq0H3YJm
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root) (:id |Syt-WGZgQleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/fontawesome-finder/") (:type :leaf) (:at 1530687789268) (:by |root) (:id |Bye6-ZzbxX)
                    :type :expr
                    :at 1528008960614
                    :by |root
                    :id |Syt-WGZgQ
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root) (:id |HJlgNn11gmleaf)
                      |j $ {} (:text "|\"Fontawesome Finder") (:type :leaf) (:at 1530687809675) (:by |root) (:id |S1eWS2JJlm)
                    :type :expr
                    :at 1527868456422
                    :by |root
                    :id |HJlgNn11gm
                :type :expr
                :at 1518157327696
                :by |root
                :id |Hy7OfCnqUG
            :type :expr
            :at 1518157327696
            :by |root
            :id |SJxuM0258M
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
          :id |Hk7B0z3pJX
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root) (:id |SkZHRz3TJ7)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root) (:id |HJzrRGhp1X)
          :type :expr
          :at 1527788237503
          :by |root
          :id |BJlrAf2TyX
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
