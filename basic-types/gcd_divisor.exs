defmodule GcdDivisor do
  def calc(0, _), do: 0

  def calc(x, y), do: calc(y, rem(x, y))
end
