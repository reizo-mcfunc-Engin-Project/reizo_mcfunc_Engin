#> reizo_mcfunc_engin:asset/object/.example/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/remove/run.m

tellraw @a [{"entity":"@s",nbt:"data.Object.ID"},{"text":"は、死んだ。"}]

kill @s