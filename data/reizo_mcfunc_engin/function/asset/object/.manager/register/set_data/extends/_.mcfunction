#> reizo_mcfunc_engin:asset/object/.manager/register/set_data/extends/_
#
# 継承元のRegisterを呼び出す
#
# @within function reizo_mcfunc_engin:asset/object/.manager/*/register/_

# 継承情報は持っておきたいものだ。
data modify entity @s data.Register.Extends set from storage reizo_mcfunc_engin:object Register.Extends

# 継承したいObjectのレジストリに対応させるためにIDに。
data modify storage reizo_mcfunc_engin:object Registry.CopyExtends.ID set from entity @s data.Register.Extends

# このままだと配列なんで...なんとか分けて実行する。
function reizo_mcfunc_engin:asset/.manager/extends/get_id.m {Type:"object"}

# 継承元のデータ適応
function reizo_mcfunc_engin:asset/object/.manager/register/set_data/_