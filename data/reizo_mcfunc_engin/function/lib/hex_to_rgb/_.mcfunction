#> reizo_mcfunc_engin:lib/hex_to_rgb/_
#
# RGB16進数を10進数に変える。
#
# @public
# @MacroInput
#   Hex = 10進数に変えたい16進数

# まずは値をTempに
$data modify storage util: in set value "$(Hex)"

# お願いSplit!
function util:split/

# 値を一時退避
data modify storage reizo_mcfunc_engin:lib Temp.HexToRGB set from storage util: out

# 一番最初に#があるはず。
data remove storage reizo_mcfunc_engin:lib Temp.HexToRGB[0]

# 