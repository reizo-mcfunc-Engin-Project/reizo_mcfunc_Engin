#> reizo_mcfunc_engin:asset/object/0002.cube_particle/summon/_
#
# 
#
# @within function function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# もうすでに俺がいる。
summon marker 0.0 0.0 0.0 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init","reizo_mcfunc_Engin.Object.CubeParticle"],Rotation:[90f,0f]}
summon marker 0.0 0.0 0.0 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.CubeParticle"],Rotation:[180f,-90f]}
execute as @e[type=marker,limit=1,tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,tag=!reizo_mcfunc_Engin.Object.Init] at @s run function reizo_mcfunc_engin:asset/object/0002.cube_particle/summon/set_data