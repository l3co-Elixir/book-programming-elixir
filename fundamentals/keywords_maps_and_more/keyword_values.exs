defmodule KeywordValues do
  def show([]), do: []

  def show([head | tail]) do
    IO.puts(head)
    show(tail)
  end
end

[name: "leandro", name: "marcos", name: "junior", name: "bruno"]
|> Keyword.values()
|> KeywordValues.show()
