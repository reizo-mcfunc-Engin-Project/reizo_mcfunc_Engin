#> reizo_mcfunc_engin:core/tick/player/_
#
# プレイヤーのTick動作
#
# @within function reizo_mcfunc_engin:core/tick/_

# プレイヤーデータ常時取得
function reizo_mcfunc_engin:core/tick/player/get_data/_

# IDを持っていない奴にIDを与える
execute \
if score $PlayerCount reizo_mcfunc_Engin._ matches 1.. \
unless score @s reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
function reizo_mcfunc_engin:api/id/allocate

#> アイテムを使用しているかどうか確認
    # アイテムを使用していない。
    execute \
    if score @s[scores={reizo_mcfunc_Engin.using_Item=1..}] reizo_mcfunc_Engin.used_Item matches 0 run \
    function reizo_mcfunc_engin:core/tick/player/release/using
    # アイテムを使用していないかどうか確認するために使う
    scoreboard players set @s reizo_mcfunc_Engin.used_Item 0

#> スニークしているかどうか確認
    # スニークをしていない
    execute \
    if score @s[scores={reizo_mcfunc_Engin.Sneaking=1..}] reizo_mcfunc_Engin.Sneaked matches 0 run \
    function reizo_mcfunc_engin:core/tick/player/release/sneking
    # スニークをしていないことを確認するために使う
    scoreboard players set @s reizo_mcfunc_Engin.Sneaked 0


# Itemの処理
function reizo_mcfunc_engin:asset/item/.manager/tick/_
# 必ずcustom_dataに、IDとnamespaceを記述すること。