#> reizo_mcfunc_engin:asset/mob/.manager/register/set_data/extends/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/_

# 継承情報は取っておきたいため、data.Registryに保管
data modify entity @s data.Registry.Extends set from storage reizo_mcfunc_engin:mob Register.Extends

# 継承したいレジスターを実行するためにIDにして格納
data modify storage reizo_mcfunc_engin:mob Registry.CopyExtends.ID set from storage reizo_mcfunc_engin:mob Register.Extends

# このままだと配列なんで...なんとか分けて実行する。
function reizo_mcfunc_engin:asset/.manager/extends/get_id.m {Type:"mob"}

# 継承元のデータ適応
function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/_