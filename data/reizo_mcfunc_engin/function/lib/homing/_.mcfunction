#> reizo_mcfunc_engin:lib/homing/_
#
# ホーミングライブラリ
#
# @public

# 角度取得
    # ストレージに取得
    data modify storage reizo_mcfunc_engin:lib Rotation set from entity @s Rotation
    # スコアに移動
        # X
        execute \
        store result score $RotationX reizo_mcfunc_Engin.Temp run \
        data get storage reizo_mcfunc_engin:lib Rotation[0] 100
        # Y
        execute \
        store result score $RotationY reizo_mcfunc_Engin.Temp run \
        data get storage reizo_mcfunc_engin:lib Rotation[1] 100

# ホーミング角度設定
    execute \
    store result score $HomingAngle reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib HomingAngle

# ホーミングする敵の方向に旋回
    # 右に旋回
        execute \
        facing entity @e[tag=reizo_mcfunc_Engin.HomingTarget,distance=..20,limit=1] eyes \
        positioned ^0.3 ^ ^3.0 \
        rotated as @s \
        positioned ^4.0 ^ ^ \
        if entity @s[distance=..5.0] run \
        scoreboard players operation $RotationX reizo_mcfunc_Engin.Temp += $HomingAngle reizo_mcfunc_Engin.Temp
    # 左に旋回
        execute \
        facing entity @e[tag=reizo_mcfunc_Engin.HomingTarget,distance=..20,limit=1] eyes \
        positioned ^-0.3 ^ ^3.0 \
        rotated as @s \
        positioned ^-4.0 ^ ^ \
        if entity @s[distance=..5.0] run \
        scoreboard players operation $RotationX reizo_mcfunc_Engin.Temp -= $HomingAngle reizo_mcfunc_Engin.Temp
    # 上に旋回
        execute \
        facing entity @e[tag=reizo_mcfunc_Engin.HomingTarget,distance=..20,limit=1] eyes \
        positioned ^ ^0.3 ^3.0 \
        rotated as @s \
        positioned ^ ^4.0 ^ \
        if entity @s[distance=..5.0] run \
        scoreboard players operation $RotationY reizo_mcfunc_Engin.Temp += $HomingAngle reizo_mcfunc_Engin.Temp
    # 下に旋回
        execute \
        facing entity @e[tag=reizo_mcfunc_Engin.HomingTarget,distance=..20,limit=1] eyes \
        positioned ^ ^-0.3 ^3.0 \
        rotated as @s \
        positioned ^ ^-4.0 ^ \
        if entity @s[distance=..5.0] run \
        scoreboard players operation $RotationY reizo_mcfunc_Engin.Temp -= $HomingAngle reizo_mcfunc_Engin.Temp

# 角度代入
    # X
    execute \
    store result entity @s Rotation[0] float 0.01 run \
    scoreboard players get $RotationX reizo_mcfunc_Engin.Temp
    # Y
    execute \
    store result entity @s Rotation[1] float 0.01 run \
    scoreboard players get $RotationY reizo_mcfunc_Engin.Temp

# リセット
    data remove storage reizo_mcfunc_engin:lib Rotation
    scoreboard players reset $RotationX reizo_mcfunc_Engin.Temp
    scoreboard players reset $RotationY reizo_mcfunc_Engin.Temp
    scoreboard players reset $HomingAngle reizo_mcfunc_Engin.Temp