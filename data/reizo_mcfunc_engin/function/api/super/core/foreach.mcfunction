#> reizo_mcfunc_engin:api/super/core/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/super/_

# 必要なデータを取得
    data modify storage reizo_mcfunc_engin:api Super.data.ID set from storage reizo_mcfunc_engin:api Args.Super.Extends[0].ID
    data modify storage reizo_mcfunc_engin:api Super.data.namespace set from storage reizo_mcfunc_engin:api Args.Super.Extends[0].namespace

# セットアップファイルが存在する場合セットアップする。
    function reizo_mcfunc_engin:api/super/core/set_up/check.m with storage reizo_mcfunc_engin:api Super.data
    execute if data storage reizo_mcfunc_engin:api Super.SetUp{required:1b} run function reizo_mcfunc_engin:api/super/core/set_up/run.m with storage reizo_mcfunc_engin:api Super.data

# メソッド実行
function reizo_mcfunc_engin:api/super/core/run.m with storage reizo_mcfunc_engin:api Super.data

# 先頭のデータ削除
data remove storage reizo_mcfunc_engin:api Args.Super.Extends[0]

# 先頭のデータが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Args.Super.Extends[0] run function reizo_mcfunc_engin:api/super/core/foreach