#> reizo_libs:array/core/reverse
#
# 
#
# @within function reizo_libs:array/reverse

data modify storage reizo_libs:_ Array.Reverse.Cash append from storage reizo_libs:_ Array.Reverse.In[-1]
data remove storage reizo_libs:_ Array.Reverse.In[-1]
execute if data storage reizo_libs:_ Array.Reverse.In[-1] run return run function reizo_libs:array/core/reverse
data modify storage reizo_libs:_ Out append from storage reizo_libs:_ Array.Reverse.Cash