#> reizo_mcfunc_engin:asset/object/0001.click_detection/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# TODO[いつか]: Coreから一回消してここに、ほんとにこれで行けるかどうかわからないので確認でき次第
# リセット
    # tag @a[tag=reizo_mcfunc_Engin.Click.Left] remove reizo_mcfunc_Engin.Click.Left
    # tag @a[tag=reizo_mcfunc_Engin.Click.Right] remove reizo_mcfunc_Engin.Click.Right

# スコアアップ
scoreboard players add @s reizo_mcfunc_Engin.KiiTimer 1

# kill
kill @s[scores={reizo_mcfunc_Engin.KiiTimer=2..}]

particle electric_spark