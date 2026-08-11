#> reizo_mcfunc_engin:api/mob/refresh_register
#
# 登録されている情報を新しくする。
# !注意!: Fieldも新しいものに初期化するので今持っているFieldを持ち越すことはできません。
#
# @api

# 既存にargsが存在する可能性があるため、退避する。
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# お掃除
    data remove storage reizo_mcfunc_engin:mob Register
    data remove storage reizo_mcfunc_engin:mob Field
    data remove entity @s data.Registry
    data remove entity @s data.Field

# 引数の取得
function reizo_mcfunc_engin:asset/.manager/common/context/args/push

# 自分のArgsから登録処理を呼び出す
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元の登録処理ももってくる
execute if data storage reizo_mcfunc_engin:mob Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"mob"}

# 登録したデータを適応
function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/_

# 退避したデータを解放する
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop