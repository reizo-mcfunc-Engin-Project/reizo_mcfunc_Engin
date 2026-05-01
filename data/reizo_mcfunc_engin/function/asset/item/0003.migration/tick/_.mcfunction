#> reizo_mcfunc_engin:asset/0003.migration/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# マイグレーションが必要ならする
execute if data storage reizo_mcfunc_engin:context this{IsNeedItemMigration:1b} run function reizo_mcfunc_engin:asset/item/0003.migration/tick/migrate/_