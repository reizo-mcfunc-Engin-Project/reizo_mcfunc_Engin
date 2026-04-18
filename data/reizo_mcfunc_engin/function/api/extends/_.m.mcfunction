#> reizo_mcfunc_engin:api/extends/_.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

# Push
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push

tellraw @a "!"

# 引数取得
    data modify storage reizo_mcfunc_engin:api Args.Extends.data append from storage reizo_mcfunc_engin:context Register.Extends
    $data modify storage reizo_mcfunc_engin:api Args.Extends.Type set value "$(Type)"

# 最初の継承であることを示す
data modify storage reizo_mcfunc_engin:api Extends.IsFirstExtends append value {_:{_:1b}}

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# 継承先を一つ一つ辿っていく
function reizo_mcfunc_engin:api/extends/core/foreach.m with storage reizo_mcfunc_engin:api Args.Extends

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# 重複したデータを消去する
function reizo_mcfunc_engin:api/extends/core/remove_duplicates/_

# Pull
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/pull

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Extends.data[-1]
    data remove storage reizo_mcfunc_engin:api Args.Extends.Type
    data remove storage reizo_mcfunc_engin:api Extends.IsFirstExtends[-1]

#> この処理をすると一番下のクラスのデータになってしまうため、再度自分の登録を行う
    # Argsを引数とし、自分の登録を行う。
    execute unless data storage reizo_mcfunc_engin:api Extends.IsFirstExtends[-1] run function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

tellraw @a "?"