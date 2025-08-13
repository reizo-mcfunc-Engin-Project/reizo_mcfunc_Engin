#> reizo_mcfunc_engin:lib/player_fire/executer_player/summon_slime
#
# FirePower = 燃える時間(1 = 1s)
#
# @within function reizo_mcfunc_engin:lib/player_fire/executer_player/_

$summon slime ^ ^-64 ^ \
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
                    "reizo_mcfunc_engin:p_fire":$(FirePower)\
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
    Team:"NoCol"\
    }