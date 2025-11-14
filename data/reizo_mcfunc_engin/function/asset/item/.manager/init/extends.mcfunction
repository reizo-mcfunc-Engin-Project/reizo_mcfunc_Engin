#> reizo_mcfunc_engin:asset/item/.manager/init/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/_

# RegisterをTempに。
data modify storage reizo_mcfunc_engin:item Temp.Register set from storage reizo_mcfunc_engin:item Register

# 継承情報は持っておきたいものだ。
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Extends set from storage reizo_mcfunc_engin:item Register.Extends

# API用変数に値を移動
data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from storage reizo_mcfunc_engin:item Register.Extends

# お掃除
data remove storage reizo_mcfunc_engin:item Register

# API起動
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"item",namespace:"reizo_mcfunc_engin",func:"init"}

# 継承元のFinalデータ格納
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.SuperClass_Final set from storage reizo_mcfunc_engin:item Register.Final

# お掃除
data remove storage reizo_mcfunc_engin:item Register

# 呼び出し
data modify storage reizo_mcfunc_engin:item Register set from storage reizo_mcfunc_engin:item Temp.Register

# お掃除
data remove storage reizo_mcfunc_engin:item Temp.Register