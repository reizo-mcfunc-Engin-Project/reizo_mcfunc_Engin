#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# データ取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
    # thisが空のObjectなら停止
    execute if data storage reizo_mcfunc_engin:context {this_Empty:1b} run return 0
    # thisがないならデータを空のやつに
    execute if data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this_Empty set value 0b
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this_Empty set value 1b
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this set value {}
    # 一度boxに移動
        data modify storage reizo_mcfunc_engin:item InThis.Args.Slot set from storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[0]
        function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/push/slot.m with storage reizo_mcfunc_engin:item InThis.Args
    # boxに移動したアイテムにデータを適応
    # tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this",color:"green"}
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/pop/slot.m with storage reizo_mcfunc_engin:item InThis.Args
    # お掃除
    data remove storage reizo_mcfunc_engin:context this_Empty
    data remove storage reizo_mcfunc_engin:item InThis