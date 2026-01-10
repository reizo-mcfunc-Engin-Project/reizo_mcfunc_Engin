#> reizo_mcfunc_engin:asset/object/.manager/tick/_
#
# Objectのtick処理
#
# @within function reizo_mcfunc_engin:core/tick/_

# Objectは、ワールド内の装飾、魔法、銃などの弾などの物体である。
# このエンジンで作られるObjectは必ず召喚時にreizo_mcfunc_Engin.Object.InitというTagを付けなければならない。
# さらに、reizo_mcfunc_Engin.Objectという風に、TagでObjectであることを宣言しなければならない。

# 常時tickでデータ適応
function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/_

# tick処理を動かすぜ！
    data modify storage reizo_mcfunc_engin:context data set from entity @s data
    function reizo_mcfunc_engin:asset/object/.manager/tick/run.m with storage reizo_mcfunc_engin:context data.Object

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
execute unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:asset/object/.manager/tick/super

# お掃除
data remove storage reizo_mcfunc_engin:context data
data remove storage reizo_mcfunc_engin:object Implement