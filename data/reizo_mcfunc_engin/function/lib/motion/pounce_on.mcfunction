#> reizo_mcfunc_engin:lib/motion/pounce_on
#
# 飛び掛かり！
#
# @input score $MotionPower reizo_mcfunc_Engin.Temp
#   どれだけ吹っ飛ばすかを設定する値
# @public

# MotionPowerの値がNullなら125にセット
execute \
unless score $MotionPower reizo_mcfunc_Engin.Temp matches -2147483648..2147483647 run \
scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 125

#> Posを取得するためのAECを召喚
    # AttackerのRotation対象に、座標0.0 0.0 0.0からローカル座標zから0.4離れた場所にAECを召喚。
    execute \
    positioned 0.0 0.0 0.0 \
    rotated as @s run \
    summon area_effect_cloud ^ ^ ^0.4 \
    {\
    Tags:\
        ["reizo_mcfunc_Engin.Motion.PosGetAEC"],\
    Particle:\
        {\
        type:"block",\
        block_state:\
            {\
            Name:"air"\
            }\
        },\
    Duration:1\
    }
    # PosGetAECのPosを取得
    data modify storage reizo_mcfunc_engin:lib Args.Pos set from entity @n[type=area_effect_cloud,tag=reizo_mcfunc_Engin.Motion.PosGetAEC] Pos

#> AECのPosを補正計算させるために、スコアに反映しなければならない。ここでMobとPlayerで分岐
    # y軸への移動量は同じなのでset
    data modify storage reizo_mcfunc_engin:lib Args.Pos[1] set value 0.32
    # Mob
    execute \
    if entity @s[type=!player] run \
    function reizo_mcfunc_engin:lib/motion/sys/mob
    # Player
    execute \
    if entity @s[type=player] run \
    function reizo_mcfunc_engin:lib/motion/sys/player

# リセット！
function reizo_mcfunc_engin:lib/motion/sys/reset/_