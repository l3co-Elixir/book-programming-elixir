defmodule GuessNumber do
  def think(a \\ 1, b \\ 10) when is_integer(a) and is_integer(b) do
    number = Enum.random(a..b)
    fn
      ^number -> "Your number is #{number}, and I think in #{number}"
      _ -> "Something's wrong sorry but I think in #{number}"
    end
  end
end
