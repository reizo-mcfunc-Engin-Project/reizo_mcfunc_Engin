#> reizo_mcfunc_engin:lib/player_fire/executer_player/_
#
# プレイヤーを燃やしてやるよ。
#
# @within function reizo_mcfunc_engin:lib/player_fire/_

# 俺が実行者
tag @s add reizo_mcfunc_Engin.PFire.Executer

# ノクバ耐性を付ける。
attribute @s knockback_resistance base set 100

# Inから移動
data modify storage reizo_mcfunc_engin:lib PFire.FirePower set from storage reizo_mcfunc_engin:lib In.PFire

# 燃やしてくれるスライム召喚
summon slime 0.0 0.0 0.0 \
    {\
    Tags:\
    ["reizo_mcfunc_Engin.PFire.On_Fire"],\
    equipment:\
        {\
        mainhand:\
            {\
            id:"stick",\
            components:\
                {\
                enchantments:\
                    {\
                    "reizo_mcfunc_engin:p_fire":1\
                    }\
                }\
            }\
        },\
    active_effects:\
        [\
            {\
            id:"invisibility",\
            duration:2147483647\
            }\
        ],\
    attributes:[{id:"attack_knockback",base:0}],\
    Size:1,\
    Team:"NoCol",\
    Silent:true\
    }

# 燃やす強さを設定
execute \
positioned 0.0 0.0 0.0 run \
data modify entity @n[type=slime,tag=reizo_mcfunc_Engin.PFire.On_Fire] equipment.mainhand.components."minecraft:enchantments"."reizo_mcfunc_engin:p_fire" set from storage reizo_mcfunc_engin:lib In.PFire
# function reizo_mcfunc_engin:lib/player_fire/executer_player/summon_slime.m with storage reizo_mcfunc_engin:lib PFire

# フォースロード！
forceload add ~ ~ ~ ~

# スライムが透明化するまで待つ
schedule function reizo_mcfunc_engin:lib/player_fire/executer_player/tp 1t