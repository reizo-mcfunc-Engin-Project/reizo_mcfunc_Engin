#> reizo_mcfunc_engin:asset/object/0002.cube_particle/summon/_
#
# 
#
# @within function function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# もうすでに俺がいる。
summon armor_stand 0.0 0.0 0.0 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init","reizo_mcfunc_Engin.Object.CubeParticle"],Rotation:[0f,90f],Invisible:true}

# 次に俺が召喚されんだ。一つのsummonで二つ。効率いいな。
summon armor_stand 0.0 0.0 0.0 {Tags:["reizo_mcfunc_Engin.Object","reizo_mcfunc_Engin.Object.Init","reizo_mcfunc_Engin.Object.CubeParticle"],Rotation:[180f,-90f],Invisible:true}