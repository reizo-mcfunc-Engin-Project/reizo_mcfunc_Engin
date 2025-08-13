#> reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/cursor
#
# カーソルのパーティクルを召喚する動作。
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/_

# 俺にパーティクルを見せてくれ！
execute rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] run particle electric_spark ^0.5 ^ ^
execute rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] run particle dust{color:[0,9,1],scale:1} ^0.5 ^ ^