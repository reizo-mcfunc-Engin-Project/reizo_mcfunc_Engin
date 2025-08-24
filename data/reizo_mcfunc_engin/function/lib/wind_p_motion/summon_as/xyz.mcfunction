#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/xyz
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/xyz

#> Nullならデフォへ。
    # X
    execute \
    unless score $x reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
    scoreboard players set $x reizo_mcfunc_Engin.Temp 3
    # Y
    execute \
    unless score $y reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
    scoreboard players set $y reizo_mcfunc_Engin.Temp 3
    # Z
    execute \
    unless score $z reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
    scoreboard players set $z reizo_mcfunc_Engin.Temp 3

#> 正の数か負の数かチェックからの実行
    # X
        # Signum
        function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$x",Obj:"reizo_mcfunc_Engin.Temp"}
        # 正の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~-2.2 ~-0.733 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/x
        # 負の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~2.2 ~0.733 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/x
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum
    # Y
        # Signum
        function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$y",Obj:"reizo_mcfunc_Engin.Temp"}
        # 正の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~-0.733 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/y
        # 負の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~0.733 ~ run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/y
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum
    # Z
        # Signum
        function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$z",Obj:"reizo_mcfunc_Engin.Temp"}
        # 正の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~-0.733 ~-2.2 run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/z
        # 負の値
        execute \
        if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} \
        as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
        positioned ~ ~0.733 ~2.2 run \
        function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/z
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum

# Tagはもういらない。
tag @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] remove reizo_mcfunc_Engin.Wind_P_Motion.This