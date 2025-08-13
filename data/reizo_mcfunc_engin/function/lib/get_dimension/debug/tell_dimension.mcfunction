#> reizo_mcfunc_engin:lib/get_dimension/debug/tell_dimension
#
# デバッカーいる！デバッグ処理だ！
#
# @within function reizo_mcfunc_engin:lib/get_dimension/_

# デバッグ
    # オーバーワールド
    execute \
    if data storage oh_my_dat: {_:[[[[[[[[{In_OverWorld:1b}]]]]]]]]} run \
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
    if data storage oh_my_dat: {_:[[[[[[[[{In_Nether:1b}]]]]]]]]} run \
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
    if data storage oh_my_dat: {_:[[[[[[[[{In_End:1b}]]]]]]]]} run \
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