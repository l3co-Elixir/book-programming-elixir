defmodule CapitalizeSentences do
  def apply(str) do
    str
    |> String.split(".")
    |> Enum.map(&(String.trim(&1) |> String.capitalize()))
    |> Enum.join(". ")
  end
end
