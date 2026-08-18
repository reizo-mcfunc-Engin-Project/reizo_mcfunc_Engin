#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/mainhand
#
# メインハンドは一見equipmentに見えるが「インベントリから実行する」ものなので対象がインベントリになる。
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_

# データ追加
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:-1}

# TargetTypeを確定させる。
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.TargetType set value "Inventory"

# 再帰汎用処理
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/rec