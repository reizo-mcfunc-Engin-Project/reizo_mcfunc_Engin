#> reizo_libs:wind_p_motion/summon_as/summon/xyz/z
#
# 
#
# @within function reizo_libs:wind_p_motion/summon_as/summon/xyz/x

# summon
summon armor_stand ~ ~ ~ {active_effects:[{id:"wind_charged",show_particles:false,duration:100}],Invisible:true,Tags:["reizo_mcfunc_Engin.Wind_P_Motion.AS"]}

#> removeかaddか検知
    # Signum
    function reizo_libs:signum_check/score {Selecter:"$z",Obj:"reizo_mcfunc_Engin.Temp"}
    # スコアremove
    execute \
    if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} run \
    scoreboard players remove $z reizo_mcfunc_Engin.Temp 1
    # スコアadd
    execute \
    if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} run \
    scoreboard players add $z reizo_mcfunc_Engin.Temp 1
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum

# 値が残っているなら再帰
execute \
unless score $z reizo_mcfunc_Engin.Temp matches 0 run \
function reizo_libs:wind_p_motion/summon_as/summon/xyz/z