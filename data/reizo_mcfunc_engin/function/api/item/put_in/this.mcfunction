#> reizo_mcfunc_engin:api/item/put_in/this
#
# お好きなときにthisを中に！！！
#
# @api

# アイテムをboxにPush
function reizo_mcfunc_engin:api/item/core/put_in/push

# カスタムデータに格納する。
    # boxに移動したアイテムにデータを適応
    # tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this",color:"green"}
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # thisがないならデータを消去
    execute unless data storage reizo_mcfunc_engin:context this run data remove block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this

# boxに入れたアイテムを手に戻す
function reizo_mcfunc_engin:api/item/core/put_in/pop
# tellraw @a {"entity":"@s",nbt:'SelectedItem.components."minecraft:custom_data".Item.this'}