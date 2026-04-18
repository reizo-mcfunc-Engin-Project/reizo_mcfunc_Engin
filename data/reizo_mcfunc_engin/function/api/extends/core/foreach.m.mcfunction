#> reizo_mcfunc_engin:api/extends/core/foreach.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/_.m

# 登録
$function reizo_mcfunc_engin:asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:api Args.Extends.data[-1][0]

# 汎用的な使い方をするためにcontextにPushする
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push

# データマージ
# data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value merge from storage reizo_mcfunc_engin:context Register

#> データチェック
    # 継承したクラスがFinalクラスだったら失敗
    execute if data storage reizo_mcfunc_engin:context Register{Final:1b} run return run function reizo_mcfunc_engin:api/extends/core/fail
    # 継承したクラスに継承情報が存在すれば、追加する
        execute if data storage reizo_mcfunc_engin:context Register.Extends run data modify storage reizo_mcfunc_engin:api Args.Extends.data[-1] append from storage reizo_mcfunc_engin:context Register.Extends[]
        execute if data storage reizo_mcfunc_engin:context Register.Extends run data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends append from storage reizo_mcfunc_engin:context Register.Extends[]

# お掃除
data remove storage reizo_mcfunc_engin:context Register.Extends

# Pull
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/pull

# お掃除
data remove storage reizo_mcfunc_engin:api Args.Extends.data[-1][0]

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Args.Extends.data[-1][0] run return run function reizo_mcfunc_engin:api/extends/core/foreach.m with storage reizo_mcfunc_engin:api Args.Extends

#> データが全て無いときの動作 = 最後の一回だけ
    # Push
    $function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push
    # お掃除
    data remove storage reizo_mcfunc_engin:context Register.Extends
    # 退避したデータにマージを
    data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value merge from storage reizo_mcfunc_engin:context Register