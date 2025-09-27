#> reizo_mcfunc_engin:lib/display_backup/sys/save/_
#
# 
#
# @within function reizo_mcfunc_engin:lib/display_backup/save

# Empty作成
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Data append value {}

# Tempデータ取得
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Temp set from entity @s

#> Typeセット
    # item_display
    execute \
    if entity @s[type=item_display] run \
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Type set value "item_display"
    # block_display
    execute \
    if entity @s[type=block_display] run \
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Type set value "block_display"
    # text_display
    execute \
    if entity @s[type=text_display] run \
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Type set value "text_display"

# TempをData[-1]へ
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Data[-1] set from storage reizo_mcfunc_engin:lib DisplayBackUp.Temp

# Temp remove
data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Temp