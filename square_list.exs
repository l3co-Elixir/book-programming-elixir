defmodule Square do
  def of([]), do: []

  def of([head | tail]), do: [head * head | of(tail)]
end

# [2,3,4]

# [4] -> [3,4]
# [4, 9] -> [4]
# [4, 9, 16] -> []
