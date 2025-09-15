#> reizo_mcfunc_engin:player/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:core/tick/_

# プレイヤーデータ常時取得
function reizo_mcfunc_engin:player/get_data/tick

# IDを持っていない奴にIDを与える
execute \
if score $PlayerCount reizo_mcfunc_Engin._ matches 1.. \
unless score @s reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
function reizo_mcfunc_engin:player/tick/get_id

#> アイテム使用リセット
    # クリックを離している
    execute \
    if score @s[scores={reizo_mcfunc_Engin.using_Item=1..}] reizo_mcfunc_Engin.used_Item matches 0 run \
    function reizo_mcfunc_engin:player/tick/reset/using_item
    # クリックを離したことを検知するために使う
    scoreboard players set @s reizo_mcfunc_Engin.used_Item 0

#> シフトリセット
    # シフトを離している
    execute \
    if score @s[scores={reizo_mcfunc_Engin.Sneaking=1..}] reizo_mcfunc_Engin.Sneaked matches 0 run \
    function reizo_mcfunc_engin:player/tick/reset/sneking
    # シフトを離したことを検知するために使う
    scoreboard players set @s reizo_mcfunc_Engin.Sneaked 0

# データがあるなら、データがあるほうを実行
    # Item
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Both run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/_
    # Tool
    execute \
    if data storage reizo_mcfunc_engin:_ Tool.Both run \
    function reizo_mcfunc_engin:asset/tools/.manager/tick/_
# Item,Toolは、必ずcustom_dataに、Addressとnamespaceを記述すること。

# リセット
function reizo_mcfunc_engin:player/tick/reset/_