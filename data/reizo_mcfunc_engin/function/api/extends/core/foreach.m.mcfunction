#> reizo_mcfunc_engin:api/extends/core/foreach.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/_.m

# 登録
$function reizo_mcfunc_engin:asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:api Args.Extends.data[-1][0]

# 汎用的な使い方をするためにcontextにPushする
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push

#> データマージ
    # 自分のデータはStackの一番後ろにあるので、それとマージする
    data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value merge from storage reizo_mcfunc_engin:context Register

    # regStash = ["equip","item","s_up"]
    # data1 = ["item","s_up"]
    # data2 = null

#> データチェック
    # 継承したクラスがFinalクラスだったら失敗
    execute if data storage reizo_mcfunc_engin:context Register{Final:1b} run return run function reizo_mcfunc_engin:api/extends/core/fail
    # 継承したクラスに継承情報があった場合、現在のデータを引数として、もう一度このAPIを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends run function reizo_mcfunc_engin:api/extends/core/rerun/_.m with storage reizo_mcfunc_engin:api Args.Extends

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Extends.data[-1][0]
    data remove storage reizo_mcfunc_engin:context Register

# data1 =["s_up"]
# data2 =["slim_boots"]

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Args.Extends.data[-1][0] run function reizo_mcfunc_engin:api/extends/core/foreach.m with storage reizo_mcfunc_engin:api Args.Extends

# C -> B -> A -> α

#> C
# register.Extends = ["B"]

# 退避
# registerStash = ["B"]

    #> B
    # register("B") => register.Extends append "A"
    # register.Extends = ["A"]
        #> A
        # register("A") => register.Extends append "α"
        # register.Extends = ["A","α"]

# マージ
# merge registerStash <= register.Extends
# registerStash = ["A","α","B"]