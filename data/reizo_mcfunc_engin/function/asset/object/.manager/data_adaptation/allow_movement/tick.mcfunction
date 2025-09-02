#> reizo_mcfunc_engin:asset/object/.manager/data_adaptation/allow_movement/tick
#
# 動くことがダメな奴の常時動作、Posを取って離れてたら戻して...
#
# @within function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/tick

# スコアに格納
    # Pos
    execute \
    store result score $Registry.Pos.X reizo_mcfunc_Engin.Temp run \
    data get entity @s Pos[0]
    execute \
    store result score $Registry.Pos.Y reizo_mcfunc_Engin.Temp run \
    data get entity @s Pos[1]
    execute \
    store result score $Registry.Pos.Z reizo_mcfunc_Engin.Temp run \
    data get entity @s Pos[2]
    # InitPos
    execute \
    store result score $Registry.InitPos.X reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:object Registry.InitPos[0]
    execute \
    store result score $Registry.InitPos.Y reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:object Registry.InitPos[1]
    execute \
    store result score $Registry.InitPos.Z reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:object Registry.InitPos[2]

# Initから離れてる!動いたな！戻れ！
execute \
unless score $Registry.InitPos.X reizo_mcfunc_Engin.Temp = $Registry.Pos.X reizo_mcfunc_Engin.Temp run \
data modify entity @s Pos set from storage reizo_mcfunc_engin:object Registry.InitPos
execute \
unless score $Registry.InitPos.Y reizo_mcfunc_Engin.Temp = $Registry.Pos.Y reizo_mcfunc_Engin.Temp run \
data modify entity @s Pos set from storage reizo_mcfunc_engin:object Registry.InitPos
execute \
unless score $Registry.InitPos.Z reizo_mcfunc_Engin.Temp = $Registry.Pos.Z reizo_mcfunc_Engin.Temp run \
data modify entity @s Pos set from storage reizo_mcfunc_engin:object Registry.InitPos

# リセット
execute \
if score $Registry.InitPos.X reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players reset $Registry.InitPos.X
execute \
if score $Registry.InitPos.Y reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players reset $Registry.InitPos.Y
execute \
if score $Registry.InitPos.Z reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players reset $Registry.InitPos.Z
execute \
if score $Registry.Pos.X reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players reset $Registry.Pos.X
execute \
if score $Registry.Pos.Y reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players reset $Registry.Pos.Y
execute \
if score $Registry.Pos.Z reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players reset $Registry.Pos.Z