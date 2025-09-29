#> reizo_libs:display_backup/save
#
# 
#
# @public

# data削除
data remove storage reizo_mcfunc_engin:lib DisplayBackUp

# data取得
execute \
as @e[type=#reizo_mcfunc_engin:displays] at @s run \
function reizo_libs:display_backup/sys/save/_