#> reizo_mcfunc_engin:asset/object/.manager/register/set_data/extends/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/set_data/_

# 継承したいObjectのレジストリに対応させるためにIDに。
data modify storage reizo_mcfunc_engin:asset Registry.CopyExtends.ID set from storage reizo_mcfunc_engin:asset Register.Extends

# このままでは配列になっているので、一つずつ分けて実行
function reizo_mcfunc_engin:asset/object/.manager/extends/get_id