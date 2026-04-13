#> reizo_mcfunc_engin:api/super/core/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/super/_

# 必要なデータを取得
    data modify storage reizo_mcfunc_engin:api Args.Super[-1].Value.ID set from storage reizo_mcfunc_engin:api Args.Super[-1].Value.Extends[0].ID
    data modify storage reizo_mcfunc_engin:api Args.Super[-1].Value.namespace set from storage reizo_mcfunc_engin:api Args.Super[-1].Value.Extends[0].namespace

# セットアップファイルが存在する場合セットアップする。
    function reizo_mcfunc_engin:api/super/core/set_up/check.m with storage reizo_mcfunc_engin:api Args.Super[-1].Value
    execute if data storage reizo_mcfunc_engin:api Super.SetUp{required:1b} run function reizo_mcfunc_engin:api/super/core/set_up/run.m with storage reizo_mcfunc_engin:api Args.Super[-1].Value

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# 必要データをセット
    data modify storage reizo_mcfunc_engin:context Args.ID set from storage reizo_mcfunc_engin:api Args.Super[-1].Value.ID
    data modify storage reizo_mcfunc_engin:context Args.namespace set from storage reizo_mcfunc_engin:api Args.Super[-1].Value.namespace

# メソッド実行
function reizo_mcfunc_engin:api/super/core/run.m with storage reizo_mcfunc_engin:api Args.Super[-1].Value

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Super[-1].Value.Extends[0]
    data remove storage reizo_mcfunc_engin:api Args.Super[-1].Value.ID
    data remove storage reizo_mcfunc_engin:api Args.Super[-1].Value.namespace

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop

# 先頭のデータが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Args.Super[-1].Value.Extends[0] run function reizo_mcfunc_engin:api/super/core/foreach