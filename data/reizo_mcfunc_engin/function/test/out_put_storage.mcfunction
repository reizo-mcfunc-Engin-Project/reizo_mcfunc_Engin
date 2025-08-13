#> reizo_mcfunc_engin:test/out_put_storage
#
# ストレージの内容をアウトプット出来るfunction
#
# @public
# @MacroInput
#   Name = ストレージのリソースパス
#   Path = アウトプットしたいNBTのパス

$tellraw @a[tag=reizo.Debug] {storage:"$(Name)",nbt:"$(Path)"}