#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/_
#
# ディスプレイツールの使ったときの処理。
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/_

# しゃがんでないならそのまま召喚
execute \
unless predicate reizo_mcfunc_engin:sneak run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/_

# しゃがんでいるなら近くのディスプレイをkill
execute \
if predicate reizo_mcfunc_engin:sneak \
if entity @n[type=#reizo_mcfunc_engin:displays] run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/true/_