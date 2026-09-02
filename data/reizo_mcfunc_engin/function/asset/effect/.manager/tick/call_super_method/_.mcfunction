#> reizo_mcfunc_engin:asset/effect/.manager/tick/call_super_method/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/super.tick

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/args/stash

# 空の空間を作成
data modify storage reizo_mcfunc_engin:effect CopiedExtends append value []

# 必要なデータを取得
data modify storage reizo_mcfunc_engin:effect CopiedExtends[-1] set from storage reizo_mcfunc_engin:context data.Registry.Extends

# メソッドを叩く
execute if data storage reizo_mcfunc_engin:effect CopiedExtends[-1][0] run function reizo_mcfunc_engin:asset/effect/.manager/tick/call_super_method/foreach

# お掃除
data remove storage reizo_mcfunc_engin:effect CopiedExtends[-1]

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/args/pop