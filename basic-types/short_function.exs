square = &(&1 * &1)
div = &(&1/&2)

Enum.map [1,2,3,5], &(&1 + 2)
Enum.each [1,2,3,5], &IO.inspect/1
