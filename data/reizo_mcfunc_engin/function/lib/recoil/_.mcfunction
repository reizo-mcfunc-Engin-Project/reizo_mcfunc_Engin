#> reizo_mcfunc_engin:lib/recoil/_
#
# 
#
# @public

# Inからコピー
data modify storage reizo_mcfunc_engin:lib Recoil.Burl set from storage reizo_mcfunc_engin:lib In.Recoil

# 召喚位置をロード
execute \
positioned ^ ^ ^300 run \
forceload add ~ ~

# マーカーを召喚
execute \
anchored eyes \
positioned ^ ^ ^300 run \
function reizo_mcfunc_engin:lib/recoil/summon_marker.m with storage reizo_mcfunc_engin:lib Recoil.Burl

# マーカーの方向に向かせる
rotate @s facing entity @n[tag=reizo_mcfunc_Engin.Recoil.BurlMarker,type=marker]

# kill
execute \
positioned ^ ^ ^300 run \
kill @e[tag=reizo_mcfunc_Engin.Recoil.BurlMarker]

# リセット
data remove storage reizo_mcfunc_engin:lib Recoil
execute \
positioned ^ ^ ^300 run \
forceload remove ~ ~