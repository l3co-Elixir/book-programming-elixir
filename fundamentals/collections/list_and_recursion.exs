defmodule ListAndRecursion do
  defp two?(num), do: rem(num, 2) == 0
  defp three?(num), do: rem(num, 3) == 0
  defp five?(num), do: rem(num, 5) == 0

  def prime(items) when is_list(items) do
    for item <- items, not two?(item) and not three?(item) and not five?(item) do
      item
    end
  end

  def prime(_), do: raise("Sorry but param need to be a list")
end
