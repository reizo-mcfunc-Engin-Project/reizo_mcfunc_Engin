#> reizo_mcfunc_engin:api/trigger/core/run/check/item/extends/_
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/_

# Registerをpush
function reizo_mcfunc_engin:asset/item/.manager/context/register/push

# データをストレージに
data modify storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Register set from storage reizo_mcfunc_engin:context Register.Extends

# foreach
function reizo_mcfunc_engin:api/trigger/core/run/check/item/extends/foreach