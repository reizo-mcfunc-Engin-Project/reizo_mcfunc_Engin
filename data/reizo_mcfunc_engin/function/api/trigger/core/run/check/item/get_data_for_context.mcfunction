#> reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data_for_context
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/foreach

# contextにデータを入れる
    # data
    data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry
    # Args
        data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context data.Args
        data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context Args
        data remove storage reizo_mcfunc_engin:context data.Args
    # this
        data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:context data.this
        data remove storage reizo_mcfunc_engin:context data.this