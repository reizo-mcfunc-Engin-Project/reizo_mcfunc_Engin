#> reizo_mcfunc_engin:asset/object/.manager/register/set_data/_
#
# Registerで設定したものを実際のObjectに適応させる。
#
# @within
#   reizo_mcfunc_engin:asset/object/.manager/summon/init
#   reizo_mcfunc_engin:asset/object/.manager/register/set_data/extends/_

# まさかのデータ取得出来てない事件
execute \
unless data storage reizo_mcfunc_engin:object Register run \
function reizo_erros:fail_data_get {Data:"Register(Reg)"}

# 動くことが許されないなら、最初に初期のPosを取得。
execute \
if data storage reizo_mcfunc_engin:object {Register:{Allow_Movement:0b}} run \
data modify entity @s data.Registry.InitPos set from entity @s Pos

#> dataにして、持っていきたいものがあるんだ。
    # Allow_Movement
    data modify entity @s data.Register.Allow_Movement set from storage reizo_mcfunc_engin:object Register.Allow_Movement