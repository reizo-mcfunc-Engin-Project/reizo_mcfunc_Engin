#> reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/_
#
# マーカーが召喚できるか確認
#
# @within function reizo_mcfunc_engin:asset/tools/0001.check_point/used/_

# 地に足ついてない。召喚できない。
execute \
if entity @s[tag=!reizo_mcfunc_Engin.Is_on_Ground] run \
function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/fail

# 地に足ついてる。召喚できる。
execute \
if entity @s[tag=reizo_mcfunc_Engin.Is_on_Ground] \
as @a[scores={reizo_mcfunc_Engin.using_Item=1..}] at @s run \
function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/summon