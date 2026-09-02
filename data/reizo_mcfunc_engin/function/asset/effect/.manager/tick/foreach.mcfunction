#> reizo_mcfunc_engin:asset/effect/.manager/tick/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/_

# 移動
    data modify storage reizo_mcfunc_engin:effect EntryEffect set from storage reizo_mcfunc_engin:effect Effects[-1]
    data remove storage reizo_mcfunc_engin:effect Effects[-1]

# Context作成
    data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:effect EntryEffect.Args
    data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:effect EntryEffect.Field
    data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:effect EntryEffect.data
    data modify storage reizo_mcfunc_engin:context Duration set from storage reizo_mcfunc_engin:effect EntryEffect.Duration

# 残り時間を減らす
execute store result storage reizo_mcfunc_engin:context Duration int 1 run data get storage reizo_mcfunc_engin:context Duration 0.9999999999

#> tick処理
    # 自分のIDとnamespaceを使って叩く
    function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m with storage reizo_mcfunc_engin:context Args
    # 自クラスのtickメソッドが存在しない場合、親クラスのtickメソッドを呼び出す。
    execute unless data storage reizo_mcfunc_engin:effect {Implement:1b} if data storage reizo_mcfunc_engin:context data.Registry.Extends run function reizo_mcfunc_engin:asset/effect/.manager/tick/call_super_method/_
    # お掃除
    data remove storage reizo_mcfunc_engin:effect Implement

# 0なったらremove処理を呼び出す
execute if data storage reizo_mcfunc_engin:context {Duration:0} run return run function reizo_mcfunc_engin:asset/effect/.manager/remove/_

# Contextを元に戻す
    data modify storage reizo_mcfunc_engin:effect EntryEffect.Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:effect EntryEffect.Field set from storage reizo_mcfunc_engin:context this
    data modify storage reizo_mcfunc_engin:effect EntryEffect.data set from storage reizo_mcfunc_engin:context data
    data modify storage reizo_mcfunc_engin:effect EntryEffect.Duration set from storage reizo_mcfunc_engin:context Duration

# 次Tickでも働いてくれよな！
execute if data storage reizo_mcfunc_engin:effect EntryEffect run data modify storage reizo_mcfunc_engin:effect NextTickEffects append from storage reizo_mcfunc_engin:effect EntryEffect

# お掃除
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context origin_Args
    data remove storage reizo_mcfunc_engin:context this
    data remove storage reizo_mcfunc_engin:context data
    data remove storage reizo_mcfunc_engin:context Duration
    data remove storage reizo_mcfunc_engin:effect EntryEffect

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:effect Effects[0] run function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach