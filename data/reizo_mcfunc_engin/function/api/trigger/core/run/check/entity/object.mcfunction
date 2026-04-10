#> reizo_mcfunc_engin:api/trigger/core/run/check/entity/object
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/foreach

$execute if entity @e[tag=reizo_mcfunc_Engin.Object,nbt={data:{Args:{ID:"$(ID)",namespace:"$(namespace)"}}}] run data modify storage reizo_mcfunc_engin:api Trigger.run.Check set value 1b