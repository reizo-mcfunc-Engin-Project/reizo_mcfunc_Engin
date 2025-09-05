#> reizo_mcfunc_engin:core/tick/player/get_data/relase_using
#
# クリックを離したときの動作。
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# クリックを離したな、実行だ！
    scoreboard players reset @s reizo_mcfunc_Engin.using_Item
    scoreboard players set @s reizo_mcfunc_Engin.used_Item 0