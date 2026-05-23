#> reizo_mcfunc_engin:api/item/refresh_register
#
# メインハンドにあるアイテムの登録されている情報を新しくする。
# !注意!: Fieldも新しいものに初期化するので今持っているFieldを持ち越すことはできません。
#
# @api

# 既存にargsが存在する可能性があるため、退避する。
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# 引数の取得
data modify storage reizo_mcfunc_engin:context Args set from entity @s SelectedItem.components."minecraft:custom_data".Item.Args

# 取得した引数からboxに新しいアイテムを設置
function reizo_mcfunc_engin:api/item/box.m with storage reizo_mcfunc_engin:context Args

# メインハンドに移動
item replace entity @s weapon.mainhand from block 10000 0 10000 container.0

# 退避したデータを解放する
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop