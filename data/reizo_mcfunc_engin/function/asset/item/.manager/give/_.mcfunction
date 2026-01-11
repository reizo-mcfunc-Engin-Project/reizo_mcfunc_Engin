#> reizo_mcfunc_engin:asset/item/.manager/give/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/give.m

# 登録処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:item

# RegisterをContextへ
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:item Register

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # 登録処理の親クラス
    execute if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:asset/item/.manager/register/super
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# 取得処理
function reizo_mcfunc_engin:asset/item/.manager/give/give

# お掃除
data remove storage reizo_mcfunc_engin:item ID
data remove storage reizo_mcfunc_engin:item namespace
data remove storage reizo_mcfunc_engin:item Register
data remove storage reizo_mcfunc_engin:item Field
data remove storage reizo_mcfunc_engin:context Register