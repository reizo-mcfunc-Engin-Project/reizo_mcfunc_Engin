#> reizo_mcfunc_engin:lib/display_backup/sys/load/_
#
# 
#
# @within function reizo_mcfunc_engin:lib/display_backup/load

# Storageコピーできなかったらおしまい。
execute \
unless data storage reizo_mcfunc_engin:lib DisplayBackUp.BackUpData run \
return run function reizo_mcfunc_engin:lib/display_backup/sys/load/fail

# [0]Copy
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Temp set from storage reizo_mcfunc_engin:lib DisplayBackUp.BackUpData[0]

#> GetData
    # Posだけほかに入れる
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Macro.x set from storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Pos[0]
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Macro.y set from storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Pos[1]
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Macro.z set from storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Pos[2]
    # Temp.Posのみ消去
    data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Pos
    # Typeだけほかに。
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Macro.Type set from storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Type
    # Temp.Typeのみ消去
    data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Temp.Type
    # 全体コピー
    data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Macro.Data set from storage reizo_mcfunc_engin:lib DisplayBackUp.Temp
    # Temp全体消去
    data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Temp

# 生きているかチェック
function reizo_mcfunc_engin:lib/display_backup/sys/load/check/set_pos.m with storage reizo_mcfunc_engin:lib DisplayBackUp.Macro
function reizo_mcfunc_engin:lib/display_backup/sys/load/check/set_pos.m with storage reizo_mcfunc_engin:lib DisplayBackUp.Macro
function reizo_mcfunc_engin:lib/display_backup/sys/load/check/set_pos.m with storage reizo_mcfunc_engin:lib DisplayBackUp.Macro

# summon
execute \
if data storage reizo_mcfunc_engin:lib DisplayBackUp{Summon:1b} run \
function reizo_mcfunc_engin:lib/display_backup/sys/load/summon.m with storage reizo_mcfunc_engin:lib DisplayBackUp.Macro

# リセット
data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Macro
data remove storage reizo_mcfunc_engin:lib DisplayBackUp.Summon

# 先頭削除
data remove storage reizo_mcfunc_engin:lib DisplayBackUp.BackUpData[0]

# 先頭が残っているなら再起
execute \
if data storage reizo_mcfunc_engin:lib DisplayBackUp.BackUpData[0] run \
function reizo_mcfunc_engin:lib/display_backup/sys/load/_