#> reizo_libs:get_dimension/debug/tell_dimension
#
# デバッカーいる！デバッグ処理だ！
#
# @within function reizo_libs:get_dimension/_

# OMDコピー
data modify storage reizo_mcfunc_engin:lib Debug.GetDimension.In_OverWorld set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].In_OverWorld
data modify storage reizo_mcfunc_engin:lib Debug.GetDimension.In_Nether set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].In_Nether
data modify storage reizo_mcfunc_engin:lib Debug.GetDimension.In_End set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].In_End

# デバッグ
    # オーバーワールド
    execute \
    if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:lib",path:"Debug.GetDimension.In_OverWorld"},range:1b} run \
    tellraw @s \
    [\
        {\
        "text": "あなたは今、"\
        },\
        {\
        "text": "オーバーワールド",\
        "color": "green",\
        "click_event":\
            {\
            "action":"run_command",\
            "command":"/execute in overworld as @s run tp @s 0.0 0.0 0.0"\
            },\
        "hover_event": \
            {\
            "action": "show_text",\
            "value": \
            [\
                {\
                "text":"クリックして"\
                },\
                {\
                "text":"オーバーワールド",\
                "color":"green"\
                },\
                {\
                "text":"の\n"\
                },\
                {\
                "text":"座標:",\
                "color":"aqua"\
                },\
                {\
                "text":"0.0 0.0 0.0",\
                "color":"gold"\
                },\
                {\
                "text":"にTPする。"\
                }\
            ]\
            }\
        },\
        {\
        "text": "にいます。"\
        }\
    ]
    # ネザー
    execute \
    if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:lib",path:"Debug.GetDimension.In_Nether"},range:1b} run \
    tellraw @s \
    [\
        {\
        "text": "あなたは今、"\
        },\
        {\
        "text": "ネザー",\
        "color": "dark_red",\
        "click_event":\
            {\
            "action":"run_command",\
            "command":"/execute in the_nether as @s run tp @s 0.0 0.0 0.0"\
            },\
        "hover_event": \
            {\
            "action": "show_text",\
            "value": \
            [\
                {\
                "text":"クリックして"\
                },\
                {\
                "text":"ネザー",\
                "color":"dark_red"\
                },\
                {\
                "text":"の\n"\
                },\
                {\
                "text":"座標:",\
                "color":"aqua"\
                },\
                {\
                "text":"0.0 0.0 0.0",\
                "color":"gold"\
                },\
                {\
                "text":"にTPする。"\
                }\
            ]\
            }\
        },\
        {\
        "text": "にいます。"\
        }\
    ]
    # エンド
    execute \
    if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:lib",path:"Debug.GetDimension.In_End"},range:1b} run \
    tellraw @s \
    [\
        {\
        "text": "あなたは今、"\
        },\
        {\
        "text": "エンド",\
        "color": "yellow",\
        "click_event":\
            {\
            "action":"run_command",\
            "command":"/execute in the_end as @s run tp @s 0.0 0.0 0.0"\
            },\
        "hover_event": \
            {\
            "action": "show_text",\
            "value": \
            [\
                {\
                "text":"クリックして"\
                },\
                {\
                "text":"エンド",\
                "color":"yellow"\
                },\
                {\
                "text":"の\n"\
                },\
                {\
                "text":"座標:",\
                "color":"aqua"\
                },\
                {\
                "text":"0.0 0.0 0.0",\
                "color":"gold"\
                },\
                {\
                "text":"にTPする。"\
                }\
            ]\
            }\
        },\
        {\
        "text": "にいます。"\
        }\
    ]

# お掃除
data remove storage reizo_mcfunc_engin:lib Debug.GetDimension