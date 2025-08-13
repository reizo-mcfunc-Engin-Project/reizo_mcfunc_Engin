#> reizo_mcfunc_engin:test/out_put_storage
#
# ストレージの内容をアウトプット出来るfunction
#
# @public
# @MacroInput
#   storage = ストレージのリソースパス
#   nbt = アウトプットしたいNBTのパス

$tellraw @a[tag=reizo.Debug] {storage:"$(storage)",nbt:"$(nbt)"}