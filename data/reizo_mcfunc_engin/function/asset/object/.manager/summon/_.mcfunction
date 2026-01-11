#> reizo_mcfunc_engin:asset/object/.manager/summon/_
#
# 
#
# @within function reizo_mcfunc_engin:api/object/summon.m

# 登録しておく。
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:object

# RegisterをContextへ
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:object Register

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # 登録処理の親クラス
    execute if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:asset/object/.manager/register/super
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# 召喚処理
function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# お掃除
data remove storage reizo_mcfunc_engin:object ID
data remove storage reizo_mcfunc_engin:object namespace
data remove storage reizo_mcfunc_engin:object Register
data remove storage reizo_mcfunc_engin:object Field
data remove storage reizo_mcfunc_engin:context Register