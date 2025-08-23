#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/looking

# summon
summon armor_stand ~ ~ ~ {active_effects:[{id:"wind_charged",show_particles:false,duration:100}],Invisible:true,Tags:["reizo_mcfunc_Engin.Wind_P_Motion.AS"]}

# スコアremove
execute \
if data storage reizo_mcfunc_engin:lib Return{Signum:1.0f} run \
scoreboard players remove $strength reizo_mcfunc_Engin.Temp 1

# スコアadd
execute \
if data storage reizo_mcfunc_engin:lib Return{Signum:-1.0f} run \
scoreboard players add $strength reizo_mcfunc_Engin.Temp 1

# まだ値があるなら再帰
execute \
unless score $strength reizo_mcfunc_Engin.Temp matches 0 run \
function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking