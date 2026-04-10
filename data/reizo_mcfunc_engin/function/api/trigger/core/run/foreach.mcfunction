#> reizo_mcfunc_engin:api/trigger/core/run/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/run

# 先頭を取得
data modify storage reizo_mcfunc_engin:api Trigger.run.Entry set from storage reizo_mcfunc_engin:api Trigger.run.Registry[0]

# トリガー名をセット
data modify storage reizo_mcfunc_engin:api Trigger.run.Entry.trigger set from storage reizo_mcfunc_engin:api Args.Trigger.run.trigger

# 実行できるか確認
function reizo_mcfunc_engin:api/trigger/core/run/check/_

# チェックしても1bじゃないならデータを消去
execute unless data storage reizo_mcfunc_engin:api Trigger.run{Check:1b} run data remove storage reizo_mcfunc_engin:api Trigger.run.Entry

# 実行
function reizo_mcfunc_engin:api/trigger/core/run/call.m with storage reizo_mcfunc_engin:api Trigger.run.Entry

# お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Registry[0]
    data remove storage reizo_mcfunc_engin:api Trigger.run.Entry
    data remove storage reizo_mcfunc_engin:api Trigger.run.Check

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:api Trigger.run.Registry[0] run function reizo_mcfunc_engin:api/trigger/core/run/foreach