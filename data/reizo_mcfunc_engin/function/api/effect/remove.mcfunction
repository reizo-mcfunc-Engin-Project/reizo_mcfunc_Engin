#> reizo_mcfunc_engin:api/effect/remove
#
# Effectを削除する。
#
# @api

# メソッドの呼び出し
function reizo_mcfunc_engin:asset/effect/.manager/remove/run.m with storage reizo_mcfunc_engin:context Args

# 自クラスのtickメソッドが存在しない場合、親クラスのtickメソッドを呼び出す。
    # 呼び出し
    execute unless data storage reizo_mcfunc_engin:effect {Implement:1b} if data storage reizo_mcfunc_engin:context data.Registry.Extends run function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"remove/_"}
    # お掃除
    data remove storage reizo_mcfunc_engin:effect Implement