#> reizo_mcfunc_engin:asset/item/0003.migration/tick/migrate/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0003.migration/tick/_

# データ処理
    execute store result storage reizo_mcfunc_engin:context this.IsVersionDifferent byte 1 run data modify storage reizo_mcfunc_engin:context data.Field.Version set from storage reizo_mcfunc_engin:context this.NowVersion
    execute if data storage reizo_mcfunc_engin:context this{IsVersionDifferent:1b} run function reizo_mcfunc_engin:asset/item/0003.migration/tick/migrate/migration/_

# お掃除
    data remove storage reizo_mcfunc_engin:context this.IsVersionDifferent
    data remove storage reizo_mcfunc_engin:context this.NowVersion
    data remove storage reizo_mcfunc_engin:context this.IsNeedItemMigration
    data remove storage reizo_mcfunc_engin:context this.Migration