#> reizo_libs:hex_to_rgb/_
#
# RGB16進数を10進数に変える。
# 詳しくはこちらを見やがれ
# https://prau-ict.com/digitalize/convert-hexadecimal-to-decimal
# 16進数の例 #FA160E
#
# @public
# @Input
#   storage reizo_mcfunc_engin:lib In.HexToRGB


# まずは値をコピー
data modify storage reizo_mcfunc_engin:lib HexToRGB.CopyIn set from storage reizo_mcfunc_engin:lib In.HexToRGB

# 1から6まで分ける
data modify storage reizo_mcfunc_engin:lib HexToRGB.String.1 set string storage reizo_mcfunc_engin:lib HexToRGB.CopyIn 1 2
data modify storage reizo_mcfunc_engin:lib HexToRGB.String.2 set string storage reizo_mcfunc_engin:lib HexToRGB.CopyIn 2 3
data modify storage reizo_mcfunc_engin:lib HexToRGB.String.3 set string storage reizo_mcfunc_engin:lib HexToRGB.CopyIn 3 4
data modify storage reizo_mcfunc_engin:lib HexToRGB.String.4 set string storage reizo_mcfunc_engin:lib HexToRGB.CopyIn 4 5
data modify storage reizo_mcfunc_engin:lib HexToRGB.String.5 set string storage reizo_mcfunc_engin:lib HexToRGB.CopyIn 5 6
data modify storage reizo_mcfunc_engin:lib HexToRGB.String.6 set string storage reizo_mcfunc_engin:lib HexToRGB.CopyIn 6 7

# 検知
function reizo_libs:hex_to_rgb/conversion/_