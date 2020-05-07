defmodule DefaultParameter do
  def params(p1, p2 \\ 2, p3 \\ 4, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end
