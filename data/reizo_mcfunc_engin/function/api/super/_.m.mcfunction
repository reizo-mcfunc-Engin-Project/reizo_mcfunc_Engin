#> reizo_mcfunc_engin:api/super/_.m
#
# 
#
# @api

# 継承中であることを示す。
data modify storage reizo_mcfunc_engin:api Super.IsInheriting set value 1b

# 必要なデータを取得
    execute unless data storage reizo_mcfunc_engin:api Args.Super.Extends[] if data storage reizo_mcfunc_engin:context data.Registry.Extends run data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends
    $data modify storage reizo_mcfunc_engin:api Super.data.Type set value "$(Type)"
    $data modify storage reizo_mcfunc_engin:api Super.data.Method set value "$(Method)"

# メソッドを叩く
function reizo_mcfunc_engin:api/super/core/foreach

# お掃除
data remove storage reizo_mcfunc_engin:api Super