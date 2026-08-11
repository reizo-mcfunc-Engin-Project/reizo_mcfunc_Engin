#> reizo_mcfunc_engin:asset/effect/.manager/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach

# メソッドの呼び出し
function reizo_mcfunc_engin:asset/effect/.manager/remove/run.m with storage reizo_mcfunc_engin:context Args

# 自クラスのtickメソッドが存在しない場合、親クラスのtickメソッドを呼び出す。
    # 呼び出し
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:effect {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"remove/_"}
    # お掃除
    data remove storage reizo_mcfunc_engin:effect Implement

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:effect Effects[0] run function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach