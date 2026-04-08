#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# データ取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item

# 共通処理の呼び出し。
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold

# thisを入れる
    # 引数セット
        data modify storage reizo_mcfunc_engin:item InThis.Args.data set from storage reizo_mcfunc_engin:context this
        data modify storage reizo_mcfunc_engin:item InThis.Args.Slot set from storage reizo_mcfunc_engin:item Inventory.Top.Slot
    # thisがないならデータを空にセット
    execute unless data storage reizo_mcfunc_engin:item InThis.Args.data run data modify storage reizo_mcfunc_engin:item InThis.Args.data set value {}
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/slot.m with storage reizo_mcfunc_engin:item InThis.Args
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/equipment.m with storage reizo_mcfunc_engin:context
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis