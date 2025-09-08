#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

#> アイテム格納用Object召喚
    # 自分のIDを取得
    execute \
    store result storage reizo_mcfunc_engin:_ ScoreID int 1 run \
    scoreboard players get @s reizo_mcfunc_Engin.ScoreID
    # IDを使って確認
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/detection_id.m with storage reizo_mcfunc_engin:_
    # 召喚したらIDで結びつけ
    execute \
    unless score @n[type=chest_minecart,tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart] reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
    scoreboard players operation @n[type=chest_minecart,tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart] reizo_mcfunc_Engin.ScoreID = @s reizo_mcfunc_Engin.ScoreID
    # お掃除
    data remove storage reizo_mcfunc_engin:_ ScoreID

execute \
at @e[type=chest_minecart,tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,distance=..0.5] \
positioned ~ ~1000 ~ run \
tp @n[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart] ~ ~ ~