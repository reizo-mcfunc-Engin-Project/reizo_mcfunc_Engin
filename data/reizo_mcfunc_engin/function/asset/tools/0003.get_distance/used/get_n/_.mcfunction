#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n

# スコアアップ
scoreboard players add @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount 1

#>
    #
    execute \
    if score @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount matches 1 run \
    function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/set_target
    #
    execute \
    if score @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount matches 2.. run \
    function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/get_dis