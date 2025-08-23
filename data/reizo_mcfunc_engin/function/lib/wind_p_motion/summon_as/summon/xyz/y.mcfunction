#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/y
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/z

# summon
summon armor_stand ~ ~ ~ {active_effects:[{id:"wind_charged",show_particles:false,duration:100}],Invisible:true,Tags:["reizo_mcfunc_Engin.Wind_P_Motion.AS"]}

#> removeかaddか検知
    # Signum
    function reizo_mcfunc_engin:lib/signum_check/score {Selecter:"$y",Obj:"reizo_mcfunc_Engin.Temp"}
    # スコアremove
    execute \
    if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} run \
    scoreboard players remove $y reizo_mcfunc_Engin.Temp 1
    # スコアadd
    execute \
    if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} run \
    scoreboard players add $y reizo_mcfunc_Engin.Temp 1
    # ライブラリリセット
    data remove storage reizo_mcfunc_engin:lib Return.Signum

# 値が残っているなら再帰
execute \
unless score $y reizo_mcfunc_Engin.Temp matches 0 run \
function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/xyz/y