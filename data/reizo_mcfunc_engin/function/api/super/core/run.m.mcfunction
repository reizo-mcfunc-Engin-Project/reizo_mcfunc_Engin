#> reizo_mcfunc_engin:api/super/core/run.m
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/foreach

$execute store success storage reizo_mcfunc_engin:api Super.RUN.required byte 1 run schedule function $(namespace):asset/$(Type)/$(ID)/$(Method) 2147483647t
$execute if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:api",path:"Super.RUN.required"},range:1b} run function $(namespace):asset/$(Type)/$(ID)/$(Method)
data remove storage reizo_mcfunc_engin:api Super.RUN.required