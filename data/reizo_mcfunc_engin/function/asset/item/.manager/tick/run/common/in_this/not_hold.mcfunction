#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold

# thisを入れる
    # 一度boxに移動
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/push/not_hold
    # boxに移動したアイテムにデータを適応
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # thisがないならデータを消去
    execute unless data storage reizo_mcfunc_engin:context this run data remove block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/pop/not_hold
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis