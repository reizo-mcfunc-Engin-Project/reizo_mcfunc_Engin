#> reizo_libs:get_dimension/_
#
# 俺は今どのディメンションにいる？
#
# OMD呼び出し
function #oh_my_dat:please

# オーバーワールド
execute \
store success storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].In_OverWorld byte 1 \
if dimension overworld
# ネザー
execute \
store success storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].In_Nether byte 1 \
if dimension the_nether
# エンド
execute \
store success storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].In_End byte 1 \
if dimension the_end

# デバッグ処理
execute \
if entity @s[tag=reizo.Debug,type=player] run \
function reizo_libs:get_dimension/debug/tell_dimension