#> reizo_mcfunc_engin:core/tick/player/_
#
# プレイヤーの処理
#
# @within function reizo_mcfunc_engin:core/tick/_

# プレイヤーのデータを取得
function reizo_mcfunc_engin:core/tick/player/get_data/_

# IDを持っていない奴にIDを与える
execute \
if score $PlayerCount reizo_mcfunc_Engin._ matches 1.. \
unless score @s reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
function reizo_mcfunc_engin:core/tick/player/get_id

# 使ってる？使ってない？どっちなんだい！
execute \
if score @s[scores={reizo_mcfunc_Engin.using_Item=1..}] reizo_mcfunc_Engin.used_Item matches 0 run \
function reizo_mcfunc_engin:core/tick/player/get_data/relase_using

# クリックを離したな！
scoreboard players set @s reizo_mcfunc_Engin.used_Item 0

# アイテムを持っているならItemとToolのtick処理を実行
    # Item
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Both run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/_
    # Tool
    execute \
    if data storage reizo_mcfunc_engin:_ Tool.Both run \
    function reizo_mcfunc_engin:asset/tools/.manager/tick/_
# Item,Toolは、必ずcustom_dataに、Addressとnamespaceを記述すること。

# データリセット
function reizo_mcfunc_engin:core/tick/player/reset_data