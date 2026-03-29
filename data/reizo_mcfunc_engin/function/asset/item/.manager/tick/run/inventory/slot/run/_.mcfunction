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
    # thisがないなら動作中断
    execute unless data storage reizo_mcfunc_engin:context this run return 0
    # 引数セット
        data modify storage reizo_mcfunc_engin:item InThis.Args.data set from storage reizo_mcfunc_engin:context this
        data modify storage reizo_mcfunc_engin:item InThis.Args.Slot set from storage reizo_mcfunc_engin:item Inventory.Top.Slot
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/slot.m with storage reizo_mcfunc_engin:item InThis.Args
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis