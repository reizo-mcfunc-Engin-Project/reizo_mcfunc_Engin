#> reizo_mcfunc_engin:lib/recoil/_
#
# 
#
# @within function reizo_mcfunc_engin:core/load/_

# まずはフォースロード
execute \
positioned ^ ^ ^300 run \
forceload add ~ ~

# 次にマーカーを召喚
execute \
anchored eyes \
positioned ^ ^ ^300 run \
function reizo_mcfunc_engin:lib/recoil/summon_marker with storage reizo_mcfunc_engin:lib Recoil_Burl

# その方向に向かせる
rotate @s facing entity @n[tag=reizo_mcfunc_Engin.Recoil.BurlMarker,type=marker]

# kill
execute \
positioned ^ ^ ^300 run \
kill @e[tag=reizo_mcfunc_Engin.Recoil.BurlMarker]

# フォールロード削除
execute \
positioned ^ ^ ^300 run \
forceload remove ~ ~