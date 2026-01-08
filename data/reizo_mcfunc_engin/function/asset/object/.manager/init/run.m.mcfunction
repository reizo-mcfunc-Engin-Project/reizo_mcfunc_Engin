#> reizo_mcfunc_engin:asset/object/.manager/init/run.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/_

# 多段継承の際にRegisterが残っていると動作がおかしくなるため消去
data remove storage reizo_mcfunc_engin:object Register

$function $(namespace):asset/object/$(ID)/init/_