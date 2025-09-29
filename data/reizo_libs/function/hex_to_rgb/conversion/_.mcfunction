#> reizo_libs:hex_to_rgb/conversion/_
#
# 
#
# @within function reizo_libs:hex_to_rgb/_

# 初期値設定
scoreboard players set $HexToRGB.String.1 reizo_mcfunc_Engin.Temp 0
scoreboard players set $HexToRGB.String.2 reizo_mcfunc_Engin.Temp 0
scoreboard players set $HexToRGB.String.3 reizo_mcfunc_Engin.Temp 0
scoreboard players set $HexToRGB.String.4 reizo_mcfunc_Engin.Temp 0
scoreboard players set $HexToRGB.String.5 reizo_mcfunc_Engin.Temp 0
scoreboard players set $HexToRGB.String.6 reizo_mcfunc_Engin.Temp 0

# 値を数値に。
function reizo_libs:hex_to_rgb/conversion/1/_
function reizo_libs:hex_to_rgb/conversion/2/_

#> 計算の時間
    # R算出
        # 計算準備
        scoreboard players set #16 reizo_mcfunc_Engin.Temp 16
        scoreboard players operation $HexToRGB.R reizo_mcfunc_Engin.Temp = $HexToRGB.String.1 reizo_mcfunc_Engin.Temp
        scoreboard players operation $HexToRGB.R reizo_mcfunc_Engin.Temp *= #16 reizo_mcfunc_Engin.Temp
        # R = (1*16)*2
        scoreboard players operation $HexToRGB.R reizo_mcfunc_Engin.Temp += $HexToRGB.String.2 reizo_mcfunc_Engin.Temp
    # G算出
        # 計算準備
        scoreboard players operation $HexToRGB.G reizo_mcfunc_Engin.Temp = $HexToRGB.String.3 reizo_mcfunc_Engin.Temp
        scoreboard players operation $HexToRGB.G reizo_mcfunc_Engin.Temp *= #16 reizo_mcfunc_Engin.Temp
        # G = (3*16)*4
        scoreboard players operation $HexToRGB.G reizo_mcfunc_Engin.Temp += $HexToRGB.String.4 reizo_mcfunc_Engin.Temp
    # B算出
        # 計算準備
        scoreboard players operation $HexToRGB.B reizo_mcfunc_Engin.Temp = $HexToRGB.String.5 reizo_mcfunc_Engin.Temp
        scoreboard players operation $HexToRGB.B reizo_mcfunc_Engin.Temp *= #16 reizo_mcfunc_Engin.Temp
        # B = (5*16)*6
        scoreboard players operation $HexToRGB.B reizo_mcfunc_Engin.Temp += $HexToRGB.String.6 reizo_mcfunc_Engin.Temp
    # 10進数に移動したものを算出
        # 計算準備
        execute \
        unless score #65536 reizo_mcfunc_Engin.Temp matches 65536 run \
        scoreboard players set #65536 reizo_mcfunc_Engin.Temp 65536
        execute \
        unless score #256 reizo_mcfunc_Engin.Temp matches 256 run \
        scoreboard players set #256 reizo_mcfunc_Engin.Temp 256
        scoreboard players operation $HexToRGB.R' reizo_mcfunc_Engin.Temp = $HexToRGB.R reizo_mcfunc_Engin.Temp
        scoreboard players operation $HexToRGB.G' reizo_mcfunc_Engin.Temp = $HexToRGB.G reizo_mcfunc_Engin.Temp
        scoreboard players operation $HexToRGB.B' reizo_mcfunc_Engin.Temp = $HexToRGB.B reizo_mcfunc_Engin.Temp
        # R*65536 =R'
        scoreboard players operation $HexToRGB.R' reizo_mcfunc_Engin.Temp *= #65536 reizo_mcfunc_Engin.Temp
        # G*256 = G'
        scoreboard players operation $HexToRGB.G' reizo_mcfunc_Engin.Temp *= #256 reizo_mcfunc_Engin.Temp
            # 間に入る計算準備
            scoreboard players operation $HexToRGB.R'+G' reizo_mcfunc_Engin.Temp = $HexToRGB.R' reizo_mcfunc_Engin.Temp
        # R'+G' = R'+G'
        scoreboard players operation $HexToRGB.R'+G' reizo_mcfunc_Engin.Temp += $HexToRGB.G' reizo_mcfunc_Engin.Temp
            # 間に入る計算準備
            scoreboard players operation $HexToRGB.out reizo_mcfunc_Engin.Temp = $HexToRGB.R'+G' reizo_mcfunc_Engin.Temp
        # (R'+G')+B' = out
        scoreboard players operation $HexToRGB.out reizo_mcfunc_Engin.Temp += $HexToRGB.B' reizo_mcfunc_Engin.Temp

# 最後にストレージに格納
execute \
store result storage reizo_mcfunc_engin:lib Return.HexToRGB int 1 run \
scoreboard players get $HexToRGB.out reizo_mcfunc_Engin.Temp

# リセット
scoreboard players reset $HexToRGB.R
scoreboard players reset $HexToRGB.R'
scoreboard players reset $HexToRGB.G
scoreboard players reset $HexToRGB.G'
scoreboard players reset $HexToRGB.B
scoreboard players reset $HexToRGB.B'
scoreboard players reset $HexToRGB.R'+G'
scoreboard players reset $HexToRGB.out
scoreboard players reset $HexToRGB.String.1
scoreboard players reset $HexToRGB.String.2
scoreboard players reset $HexToRGB.String.3
scoreboard players reset $HexToRGB.String.4
scoreboard players reset $HexToRGB.String.5
scoreboard players reset $HexToRGB.String.6
data remove storage reizo_mcfunc_engin:lib HexToRGB