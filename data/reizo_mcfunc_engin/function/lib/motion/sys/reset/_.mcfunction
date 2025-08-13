#> reizo_mcfunc_engin:lib/motion/sys/reset/_
#
# リセットしてやるよ！
#
# @within function reizo_mcfunc_engin:lib/motion/*

# デバッグTagがついている奴がいるならデバッグ機能発動
execute \
if entity @a[tag=reizo.Debug] run \
function reizo_mcfunc_engin:lib/motion/debug/view_score

#> リセット！
    scoreboard players reset $VectorX
    scoreboard players reset $VectorY
    scoreboard players reset $VectorZ

# MotionPowerだけは1tick遅らせる。
    schedule function reizo_mcfunc_engin:lib/motion/sys/reset/motion_power 1t