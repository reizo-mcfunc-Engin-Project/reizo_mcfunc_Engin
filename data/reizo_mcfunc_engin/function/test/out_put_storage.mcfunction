#> reizo_mcfunc_engin:test/out_put_storage
#
# ストレージの内容をアウトプット出来るfunction
#
# @public
# @Input storage reizo_mcfunc_engin:test OPS.NBT
#   アウトプットするストレージのNBTを格納するストレージ

# Tempストレージにコピー
data modify storage reizo_mcfunc_engin:test Temp.OPS.NBT set from storage reizo_mcfunc_engin:test OPS.NBT

# お言葉を言います。
tellraw @a[tag=reizo.Debug] {storage:"reizo_mcfunc_engin:test",nbt:"Temp.OPS.NBT"}

# お掃除
data remove storage reizo_mcfunc_engin:test OPS
data remove storage reizo_mcfunc_engin:test Temp.OPS