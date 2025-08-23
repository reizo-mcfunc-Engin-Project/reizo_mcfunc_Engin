#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/looking
#
# 視線の先に進みたいときの召喚処理
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/looking

# Nullならデフォへ。
execute \
unless score $strength reizo_mcfunc_Engin._ matches -2147483648..2147483647 run \
scoreboard players set $strength reizo_mcfunc_Engin._ 3

# 正の数か負の数かチェック
function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$strength",Obj:"reizo_mcfunc_Engin._"}

# 正の値か負の値かで分岐
    # 正
    execute \
    if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
    as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
    positioned ~ ~0.5 ~ \
    positioned ^ ^ ^-1 run \
    function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
    # 負
    execute \
    if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
    as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
    positioned ~ ~0.5 ~ \
    positioned ^ ^ ^1 run \
    function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking

# Tagはもういらない。
tag @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] remove reizo_mcfunc_Engin.Wind_P_Motion.This