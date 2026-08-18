#> reizo_mcfunc_engin:api/item/refresh_register/inventory
#
# インベントリにあるアイテムの登録されている情報を新しくする。
# !注意!: Fieldも新しいものに初期化するので今持っているFieldを持ち越すことはできません。
#
# @api

# 既存にargsが存在する可能性があるため、退避する。
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# 引数の取得
    data modify storage reizo_mcfunc_engin:api Item.refresh_register.ArgsList append from entity @s Inventory[].components."minecraft:custom_data".Item.Args
    data modify storage reizo_mcfunc_engin:api Item.refresh_register.SlotList append from entity @s Inventory[].Slot

# foreach
function reizo_mcfunc_engin:api/item/core/refresh_register/foreach

# 退避したデータを解放する
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop

# お掃除
data remove storage reizo_mcfunc_engin:api Item.refresh_register