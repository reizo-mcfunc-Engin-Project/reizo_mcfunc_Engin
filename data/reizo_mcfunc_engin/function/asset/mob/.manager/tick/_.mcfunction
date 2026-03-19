#> reizo_mcfunc_engin:asset/mob/.manager/tick/_
#
# Mobの処理
#
# @within function core/tick/_

# Mobは、基本的にAIの考えで動くEntityである。
# このエンジンで作られるMobは、必ず召喚時にreizo_mcfunc_Engin.Mob.Initという名のTagを付けなければならない。
# さらに、reizo_mcfunc_Engin.Mobという風に、自分がMobであることを宣言するTagを付けなければならない。

# 常時データ適応を呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/set_data/tick/_

# IDからtick処理を叩く。
    function reizo_mcfunc_engin:asset/.manager/common/context/args/push
    function reizo_mcfunc_engin:asset/.manager/common/context/data/push
    data modify storage reizo_mcfunc_engin:context this set from entity @s data.this
    function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m with storage reizo_mcfunc_engin:context Args

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:mob {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}

# お掃除
data remove storage reizo_mcfunc_engin:context Args
data remove storage reizo_mcfunc_engin:context origin_Args
data remove storage reizo_mcfunc_engin:mob Implement
data remove storage reizo_mcfunc_engin:context this