#> reizo_mcfunc_engin:api/item/refresh_register
#
# メインハンドにあるアイテムの登録されている情報を新しくする。
# !注意!: Fieldも新しいものに初期化するので今持っているFieldを持ち越すことはできません。
#
# @api

# 既存にargsが存在する可能性があるため、退避する。
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# お掃除
    data remove storage reizo_mcfunc_engin:item Register
    data remove storage reizo_mcfunc_engin:item Field
    data remove entity @s data.Registry
    data remove entity @s data.Field

# 引数の取得
data modify storage reizo_mcfunc_engin:context Args set from entity @s SelectedItem.components."minecraft:custom_data".Item.Args

# 自分のArgsから登録処理を呼び出す
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元の登録処理ももってくる
execute if data storage reizo_mcfunc_engin:item Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"item"}

# 登録したデータを適応
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# 退避したデータを解放する
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop