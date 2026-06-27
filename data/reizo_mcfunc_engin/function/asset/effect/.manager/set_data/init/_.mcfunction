#> reizo_mcfunc_engin:asset/effect/.manager/set_data/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/init/_

# 名前
data modify storage reizo_mcfunc_engin:effect Effect.Name set from storage reizo_mcfunc_engin:effect Register.Name

# 説明文
data modify storage reizo_mcfunc_engin:effect Effect.Lore set from storage reizo_mcfunc_engin:effect Register.Lore

# 残り時間
data modify storage reizo_mcfunc_engin:effect Effect.Duration set from storage reizo_mcfunc_engin:effect Register.Duration

# Registryに格納するもの
    # Extends
    data modify storage reizo_mcfunc_engin:effect Effect.data.Registry.Extends set from storage reizo_mcfunc_engin:effect Register.Extends