#> reizo_mcfunc_engin:asset/item/0001.abstract_item/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

#> 完全に自分のthisだけを扱えるメソッド
    # 他のやつにこのデータが干渉してほしくないので退避
    function reizo_mcfunc_engin:asset/.manager/common/context/this/stash
    # メソッドを呼び出す
    function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"preserve/_"}
    # 退避したデータを解放する
    function reizo_mcfunc_engin:asset/.manager/common/context/this/pop