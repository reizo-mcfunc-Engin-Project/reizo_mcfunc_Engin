#> reizo_mcfunc_engin:core/load/_
#
# リロードだ！
#
# @within tag/function minecraft:load

#> ライブラリ呼び出し
    # Oh_my_dat
    function oh_my_dat:sys/load
    # hb.PlayerMotion
    function p_motion:system/load

# スコア作成
scoreboard objectives add reizo_mcfunc_Engin._ dummy
scoreboard objectives add reizo_mcfunc_Engin.Temp dummy
scoreboard objectives add reizo_mcfunc_Engin.ScoreID dummy "スコアID Int型"
scoreboard objectives add reizo_mcfunc_Engin.using_Item dummy "アイテムを使用している。 Int型"
scoreboard objectives add reizo_mcfunc_Engin.used_Item dummy "アイテムを使用した。 Int型"
scoreboard objectives add reizo_mcfunc_Engin.KiiTimer dummy "killされるまでの時間"
scoreboard objectives add reizo_mcfunc_Engin.GetDis.Get_N.UseCount dummy
scoreboard objectives add reizo_mcfunc_Engin.Sneaking dummy "シフトを押している。 Int型"
scoreboard objectives add reizo_mcfunc_Engin.Sneaked dummy "シフトを押した。 Int型"

# Initが終わった後の処理
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:lib",path:"OnlyOnce.reizo_mcfunc_engin:core/install/init"},range:1b} run \
function reizo_mcfunc_engin:core/load/inited