#> reizo_mcfunc_engin:asset/item/.manager/not_hold/call_super_method/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/super.not_hold

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# 空の空間を作成
data modify storage reizo_mcfunc_engin:item CopiedExtends append value []

# 必要なデータを取得
data modify storage reizo_mcfunc_engin:item CopiedExtends[-1] set from storage reizo_mcfunc_engin:context data.Registry.Extends

# キャッシュが存在している場合、必要なデータをキャッシュに置き換える
execute if data storage reizo_mcfunc_engin:context Cache.NotHold run data modify storage reizo_mcfunc_engin:item CopiedExtends[-1] set from storage reizo_mcfunc_engin:context Cache.NotHold

# メソッドを叩く
execute if data storage reizo_mcfunc_engin:item CopiedExtends[-1][0] run function reizo_mcfunc_engin:asset/item/.manager/not_hold/call_super_method/foreach

# お掃除
data remove storage reizo_mcfunc_engin:item CopiedExtends[-1]

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop