#> reizo_mcfunc_engin:core/tick/player/get_data/using_item
#
# 使ったな！
#
# @within advancement reizo_mcfunc_engin:using_item

# スコアアップ
scoreboard players add @s reizo_mcfunc_Engin.using_Item 1

# スコアセット
scoreboard players set @s reizo_mcfunc_Engin.used_Item 1

# 進捗剥奪！
advancement revoke @s only reizo_mcfunc_engin:using_item