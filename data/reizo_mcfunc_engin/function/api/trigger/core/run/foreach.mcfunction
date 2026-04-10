#> reizo_mcfunc_engin:api/trigger/core/run/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/run

# 先頭を取得
data modify storage reizo_mcfunc_engin:api Trigger.run.Entry set from storage reizo_mcfunc_engin:api Trigger.run.Registry[0]

# トリガー名をセット
data modify storage reizo_mcfunc_engin:api Trigger.run.Entry.trigger set from storage reizo_mcfunc_engin:api Args.Trigger.run.trigger

# タイプがアイテムなら現在のスロットを確認
execute if data storage reizo_mcfunc_engin:api Trigger.run.Entry{Type:"item"} run function reizo_mcfunc_engin:api/trigger/core/run/slot_check/_

# タイプがObject,またはMobの場合の確認
    execute if data storage reizo_mcfunc_engin:api Trigger.run.Entry{Type:"mob"} run function reizo_mcfunc_engin:api/trigger/core/run/check/entity/mob with storage reizo_mcfunc_engin:api Trigger.run.Entry
    execute if data storage reizo_mcfunc_engin:api Trigger.run.Entry{Type:"object"} run function reizo_mcfunc_engin:api/trigger/core/run/check/entity/object with storage reizo_mcfunc_engin:api Trigger.run.Entry

# チェックしても1bじゃないならデータを消去
execute unless data storage reizo_mcfunc_engin:api Trigger.run{Check:1b} run data remove storage reizo_mcfunc_engin:api Trigger.run.Entry

# 実行
function reizo_mcfunc_engin:api/trigger/core/run/call.m with storage reizo_mcfunc_engin:api Trigger.run.Entry

# お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Registry[0]
    data remove storage reizo_mcfunc_engin:api Trigger.run.Entry

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:api Trigger.run.Registry[0] run function reizo_mcfunc_engin:api/trigger/core/run/foreach