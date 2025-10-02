#> reizo_mcfunc_engin:asset/object/.manager/set_data/init/extends/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/init

# RegisterをTempに。
data modify storage reizo_mcfunc_engin:object Temp.Register set from storage reizo_mcfunc_engin:object Register

# 継承情報は持っておきたいものだ。
data modify entity @s data.Registry.Extends set from storage reizo_mcfunc_engin:object Register.Extends

# 継承したいObjectのレジストリに対応させるためにIDに。
data modify storage reizo_mcfunc_engin:object Registry.CopyExtends.ID set from entity @s data.Register.Extends

# namespaceをExtendsにコピー
data modify storage reizo_mcfunc_engin:object Extends.namespace set from entity @s data.Object.namespace

# このままだと配列なんで...なんとか分けて実行する。
function reizo_mcfunc_engin:api/extends/get_id.m {Type:"object",namespace:"reizo_mcfunc_engin",S_namespace:"reizo_mcfunc_engin"}

# 継承元のFinalデータ格納
data modify entity @s data.Registry.Extends.SuperClass.Final set from storage reizo_mcfunc_engin:object Register.Final

# お掃除
data remove storage reizo_mcfunc_engin:object Register

# 呼び出し
data modify storage reizo_mcfunc_engin:object Register set from storage reizo_mcfunc_engin:object Temp.Register

# お掃除
data remove storage reizo_mcfunc_engin:object Temp.Register