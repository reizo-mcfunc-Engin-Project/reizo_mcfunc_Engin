#> reizo_mcfunc_engin:asset/effect/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/give/give

# 継承した際にはcontext内にRegisterが存在しているので引き出す。
function reizo_mcfunc_engin:asset/effect/.manager/context/register/pull

# ID,namespaceをArgsに
data modify storage reizo_mcfunc_engin:effect Effect.Args set from storage reizo_mcfunc_engin:context Args

# 登録したデータを適応
function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/_

# Contextの作成
    data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:effect Effect.data
    data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:effect Field
    data modify storage reizo_mcfunc_engin:context Effects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].Args
    data modify storage reizo_mcfunc_engin:context Effects append from storage reizo_mcfunc_engin:context Args

# IDとnamespaceからeffectごとのInit処理呼び出し
function reizo_mcfunc_engin:asset/effect/.manager/init/run.m with storage reizo_mcfunc_engin:context Args

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:effect {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"init/_"}
    data remove storage reizo_mcfunc_engin:effect Implement

# Contextを戻す
    data modify storage reizo_mcfunc_engin:effect Effect.data set from storage reizo_mcfunc_engin:context data
    data modify storage reizo_mcfunc_engin:effect Effect.Field set from storage reizo_mcfunc_engin:context this