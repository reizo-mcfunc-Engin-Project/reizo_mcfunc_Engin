#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/_

# しゃがんでなくて泣く
execute \
unless predicate reizo_mcfunc_engin:sneak run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/_

# しゃがんでて泣く
execute \
if predicate reizo_mcfunc_engin:sneak \
if entity @n[type=#reizo_mcfunc_engin:displays] run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/true/_