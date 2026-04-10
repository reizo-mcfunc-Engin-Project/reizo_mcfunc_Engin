#> reizo_mcfunc_engin:api/trigger/core/run/check/entity/mob
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/foreach

$execute if entity @e[tag=reizo_mcfunc_Engin.Mob,nbt={data:{Args:{ID:"$(ID)",namespace:"$(namespace)"}}}] run data modify storage reizo_mcfunc_engin:api Trigger.run.Check set value 1b