#> reizo_libs:get_block_name/_
#
# 指定した座標のブロック名を取得する。
#
# @public

# そこがairならOutにairを入れる
execute if block ~ ~ ~ air run data modify storage reizo_libs:_ Out append value "minecraft:air"

# lootでブロックを[0.0,1000.0,0.0]の座標にブロックをシルクタッチで掘ったことにしてアイテムを召喚させる
loot spawn 0.0 1000.0 0.0 mine ~ ~ ~ debug_stick[enchantments={silk_touch:1}]

# 原点,Y+1000に召喚されたアイテムのidを取得してOutに渡す
execute positioned 0.0 1000.0 0.0 run data modify storage reizo_libs:_ Out append from entity @n[type=item] Item.id

# 出てきたアイテムを消す
execute positioned 0.0 1000.0 0.0 run kill @n[type=item]