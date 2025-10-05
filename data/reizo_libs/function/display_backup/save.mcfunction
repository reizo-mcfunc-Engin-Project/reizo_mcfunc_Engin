#> reizo_libs:display_backup/save
#
# 
#
# @public

# 今回のデータをまた呼び出したくなった時ように残しておく。
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.old.Data set from storage reizo_mcfunc_engin:lib DisplayBackUp.Data

# data削除
data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Data

# data取得
execute \
as @e[type=#reizo_mcfunc_engin:displays] at @s run \
function reizo_libs:display_backup/sys/save/_