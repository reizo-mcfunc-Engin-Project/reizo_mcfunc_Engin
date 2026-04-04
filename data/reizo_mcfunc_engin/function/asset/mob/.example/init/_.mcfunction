#> reizo_mcfunc_engin:asset/mob/.example/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

tellraw @a {"text":".example",color:"aqua"}

data modify storage reizo_mcfunc_engin:api Args.Super[-1].Extends set from storage reizo_mcfunc_engin:context Register.Extends
data modify storage reizo_mcfunc_engin:api Args.Super[-1].Type set value "mob"
data modify storage reizo_mcfunc_engin:api Args.Super[-1].Method set value "init/_"
function reizo_mcfunc_engin:api/super/_