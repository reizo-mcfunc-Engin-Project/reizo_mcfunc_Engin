#> reizo_mcfunc_engin:player/tick/_
#
# Tick時に行われるプレイヤーの処理
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


# Itemの処理
function reizo_mcfunc_engin:asset/item/.manager/tick/_
# 必ずcustom_dataに、IDとnamespaceを記述すること。

# リセット
function reizo_mcfunc_engin:player/tick/reset/_