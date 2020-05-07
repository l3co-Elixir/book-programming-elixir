defmodule HeadTail do
  def show([head | []]) when is_integer(head), do: IO.puts(head)

  def show([head | tail]) do
    print(head)
    show(tail)
  end

  def print(line) when is_integer(line), do: IO.puts(line)

  def print(line), do: raise("Sorry but this ``#{line}`` is not a number")
end
