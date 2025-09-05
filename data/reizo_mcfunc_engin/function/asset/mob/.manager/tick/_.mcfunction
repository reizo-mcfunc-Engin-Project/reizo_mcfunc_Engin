#> reizo_mcfunc_engin:asset/mob/.manager/tick/_
#
# Mobの処理
#
# @within function core/tick/_

# Mobは、基本的にAIの考えで動くEntityである。
# このエンジンで作られるMobは、必ず召喚時にreizo_mcfunc_Engin.Mob.Initという名のTagを付けなければならない。
# さらに、reizo_mcfunc_Engin.Mobという風に、自分がMobであることを宣言するTagを付けなければならない。

# 常時データ適応を呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/tick

# IDからtick処理を叩く。
function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m with entity @s data.Mob