#> reizo_mcfunc_engin:api/super/core/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/super/_

# 必要なデータを取得
    data modify storage reizo_mcfunc_engin:api Args.Super[-1].ID set from storage reizo_mcfunc_engin:api Args.Super[-1].Extends[0].ID
    data modify storage reizo_mcfunc_engin:api Args.Super[-1].namespace set from storage reizo_mcfunc_engin:api Args.Super[-1].Extends[0].namespace

# セットアップファイルが存在する場合セットアップする。
    function reizo_mcfunc_engin:api/super/core/set_up/check.m with storage reizo_mcfunc_engin:api Args.Super[-1]
    execute if data storage reizo_mcfunc_engin:api Super.SetUp{required:1b} run function reizo_mcfunc_engin:api/super/core/set_up/run.m with storage reizo_mcfunc_engin:api Args.Super[-1]

# 退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/this/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# 必要データをセット
    data modify storage reizo_mcfunc_engin:context Args.ID set from storage reizo_mcfunc_engin:api Args.Super[-1].ID
    data modify storage reizo_mcfunc_engin:context Args.namespace set from storage reizo_mcfunc_engin:api Args.Super[-1].namespace
    data modify storage reizo_mcfunc_engin:context data.Registry set from storage reizo_mcfunc_engin:context dataStackStash[-1].Value.Registry
    data modify storage reizo_mcfunc_engin:context data.Field set from storage reizo_mcfunc_engin:context dataStackStash[-1].Value.Field

    # execute if entity @s[tag=reizo_mcfunc_Engin.Mob] run tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"Args.ID",color:"green"}
    # execute if entity @s[tag=reizo_mcfunc_Engin.Mob] run tellraw @a {"storage":"reizo_mcfunc_engin:api",nbt:"Args.Super[-1]",color:"dark_green"}
# メソッド実行
function reizo_mcfunc_engin:api/super/core/run.m with storage reizo_mcfunc_engin:api Args.Super[-1]

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Super[-1].Extends[0]
    data remove storage reizo_mcfunc_engin:api Args.Super[-1].ID
    data remove storage reizo_mcfunc_engin:api Args.Super[-1].namespace

# 解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/this/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/data/pop

# もしTypeがItemでPutIn APIを使用したのならデータをマージする
    data modify storage reizo_mcfunc_engin:api Super.Type set from storage reizo_mcfunc_engin:api Args.Super[-1].Type
    execute if data storage reizo_mcfunc_engin:api {Super:{Type:"item"},PutIn:{hasUsed:1b}} run function reizo_mcfunc_engin:api/super/core/item_data_merge/_
    data remove storage reizo_mcfunc_engin:api Super.Type

# 先頭のデータが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Args.Super[-1].Extends[0] run function reizo_mcfunc_engin:api/super/core/foreach