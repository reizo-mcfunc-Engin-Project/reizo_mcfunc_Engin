#> reizo_mcfunc_engin:asset/mob/.manager/set_data/init/extends/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/init

# RegisterをTempに。
data modify storage reizo_mcfunc_engin:mob Temp.Register set from storage reizo_mcfunc_engin:mob Register

# 継承情報は持っておきたいものだ。
data modify entity @s data.Registry.Extends set from storage reizo_mcfunc_engin:mob Register.Extends

# 継承情報を一度コピー
data modify storage reizo_mcfunc_engin:mob Registry.CopyExtends set from storage reizo_mcfunc_engin:mob Register.Extends

# このままだと配列なんで...なんとか分けて実行する。
function reizo_mcfunc_engin:api/extends/get_id.m {Type:"mob",namespace:"reizo_mcfunc_engin",S_namespace:"reizo_mcfunc_engin"}

# 継承元のFinalデータ格納
data modify entity @s data.Registry.SuperClass_Final set from storage reizo_mcfunc_engin:mob Register.Final

# お掃除
data remove storage reizo_mcfunc_engin:mob Register

# 呼び出し
data modify storage reizo_mcfunc_engin:mob Register set from storage reizo_mcfunc_engin:mob Temp.Register

# お掃除
data remove storage reizo_mcfunc_engin:mob Temp.Register