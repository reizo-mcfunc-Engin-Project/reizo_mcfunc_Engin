#> reizo_mcfunc_engin:core/tick/player/get_data/tick
#
# プレイヤーのデータをtick単位で取得する。
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# 持っているアイテムのデータ取得
function reizo_mcfunc_engin:core/tick/player/get_data/item

# プレイヤーの数をスコアに反映
execute \
store result score $PlayerCount reizo_mcfunc_Engin._ \
if entity @s

# 地面についているかついていないか。
function reizo_mcfunc_engin:core/tick/player/get_data/is_on_/ground

# 燃えているから燃えていないか。
function reizo_mcfunc_engin:core/tick/player/get_data/is_on_/fire

# ダメージを食らったか。
function reizo_mcfunc_engin:core/tick/player/get_data/is_on_/hurt

# なんのエフェクトがついているか。
function reizo_mcfunc_engin:core/tick/player/get_data/effect/_