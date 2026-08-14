#> reizo_mcfunc_engin:asset/item/.manager/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:player/tick/_

# データ取得
function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/_

# 実行
execute \
if data storage reizo_mcfunc_engin:item data run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

# ドロップしたな！
execute if score @s reizo_mcfunc_Engin.Drop matches 1.. if entity @n[type=item,distance=..1.35,nbt={Age:0s}] run function reizo_mcfunc_engin:asset/item/.manager/drop/_