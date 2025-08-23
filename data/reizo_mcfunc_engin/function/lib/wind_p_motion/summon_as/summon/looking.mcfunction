#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/looking

# summon
summon armor_stand ~ ~ ~ {active_effects:[{id:"wind_charged",show_particles:false,duration:100}],Invisible:true,Tags:["reizo_mcfunc_Engin.Wind_P_Motion.AS"]}

# スコアremove
scoreboard players remove $strength reizo_mcfunc_Engin._ 1

# まだ値があるなら再帰
execute \
if score $strength reizo_mcfunc_Engin._ matches 1.. run \
function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon/looking