#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_args
#
# この関数の実行前には必ずContextにdataを入れてくること。
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

# データ取得
    data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context data.Args
    data remove storage reizo_mcfunc_engin:context data.Args
    data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context Args