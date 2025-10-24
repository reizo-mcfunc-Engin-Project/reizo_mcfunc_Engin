#> reizo_mcfunc_engin:api/call_method/core/extends.m
#
# 継承元の処理を呼び出すAPIの呼び出し。
#
# @within function reizo_mcfunc_engin:api/call_method/_.m

# API用変数に値をコピー
    # 継承情報
    execute if entity @s[type=!player,tag=reizo_mcfunc_Engin.Mob] run data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from entity @s data.Registry.Extends
    execute if entity @s[type=!player,tag=reizo_mcfunc_Engin.Object] run data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from entity @s data.Registry.Extends
    execute if entity @s[type=player] if data storage reizo_mcfunc_engin:_ Item.Both.Extends run data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from storage reizo_mcfunc_engin:_ Item.Both.Extends
    # Final情報
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach.SuperClass_Final set from entity @s data.Registry.SuperClass_Final

# API実行
$function reizo_mcfunc_engin:api/extends/foreach.m {Type:"$(Type)",namespace:"$(namespace)",func:"call_method"}