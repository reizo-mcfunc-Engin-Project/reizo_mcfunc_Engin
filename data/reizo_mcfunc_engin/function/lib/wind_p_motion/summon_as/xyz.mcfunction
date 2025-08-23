#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/xyz
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/xyz

#> Nullならデフォへ。
    # X
    execute \
    unless score $x reizo_mcfunc_Engin._ matches -2147483648..2147483647 run \
    scoreboard players set $x reizo_mcfunc_Engin._ 3
    # Y
    execute \
    unless score $y reizo_mcfunc_Engin._ matches -2147483648..2147483647 run \
    scoreboard players set $y reizo_mcfunc_Engin._ 3
    # Z
    execute \
    unless score $z reizo_mcfunc_Engin._ matches -2147483648..2147483647 run \
    scoreboard players set $z reizo_mcfunc_Engin._ 3

#> 正の数か負の数かチェックからの実行
    # X
    function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$x",Obj:"reizo_mcfunc_Engin._"}
        # 正の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~1 ~0.5 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
        # 負の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~-1 ~0.5 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum
    # Y
    function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$y",Obj:"reizo_mcfunc_Engin._"}
        # 正の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~-0.5 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
        # 負の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~1.5 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum
    # Z
    function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$z",Obj:"reizo_mcfunc_Engin._"}
        # 正の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~0.5 ~1 run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
        # 負の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~0.5 ~-1 run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum

# Tagはもういらない。
tag @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] remove reizo_mcfunc_Engin.Wind_P_Motion.This