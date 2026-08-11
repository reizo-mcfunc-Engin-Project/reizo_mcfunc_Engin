#> reizo_mcfunc_engin:api/item/box.m
#
# 
#
# @api

# お掃除
data remove block 10000 0 10000 Items

# Give関数から召喚させる
$execute positioned 10000 0 10000 run function reizo_mcfunc_engin:api/item/give.m {ID:"$(ID)",namespace:"$(namespace)"}

# 召喚されたアイテムをboxにコピーする
    data modify block 10000 0 10000 Items prepend value {id:"stone"}
    data modify block 10000 0 10000 Items[0] set from entity @n[type=item] Item

# アイテムをキルする
execute positioned 10000 0 10000 run kill @n[type=item]