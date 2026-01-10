#> reizo_mcfunc_engin:asset/.example/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# Tick処理
tellraw @s {"text":"!",color:"red"}

data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "item"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "tick/_"
function reizo_mcfunc_engin:api/super/_