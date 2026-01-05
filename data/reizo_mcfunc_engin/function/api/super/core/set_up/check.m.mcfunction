#> reizo_mcfunc_engin:api/super/core/set_up/check.m
#
# 
#
# @within function reizo_mcfunc_engin:api/super/_

$execute store success storage reizo_mcfunc_engin:api Super.SetUp.required byte 1 run schedule function reizo_mcfunc_engin:api/super/core/set_up/$(Method) 2147483647t
$schedule clear reizo_mcfunc_engin:api/super/core/set_up/$(Method)