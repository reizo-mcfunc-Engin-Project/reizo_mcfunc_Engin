#> reizo_mcfunc_engin:api/super/_.m
#
# 
#
# @api

# 空の空間を作成
data modify storage reizo_mcfunc_engin:api Args.Super append value {}

# 最初の継承でないのなら、originからデータを取得する。
execute if data storage reizo_mcfunc_engin:api Super.IsFirstExtends[-1]._{_:0b} run data modify storage reizo_mcfunc_engin:api Args.Super[-1].Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends

# 必要なデータを取得
    execute unless data storage reizo_mcfunc_engin:api Args.Super[-1].Extends[] if data storage reizo_mcfunc_engin:context data.Registry.Extends run data modify storage reizo_mcfunc_engin:api Args.Super[-1].Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends
    $data modify storage reizo_mcfunc_engin:api Args.Super[-1].Type set value "$(Type)"
    $data modify storage reizo_mcfunc_engin:api Args.Super[-1].Method set value "$(Method)"

# 最初の継承ではないことを示す。
data modify storage reizo_mcfunc_engin:api Super.IsFirstExtends append value {_:{_:0b}}

# メソッドを叩く
function reizo_mcfunc_engin:api/super/core/foreach

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Super[-1]
    data remove storage reizo_mcfunc_engin:api Super