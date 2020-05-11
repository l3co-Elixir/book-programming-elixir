defmodule AlignString do
  defp extract_biggest_size(items), do: Enum.sort(items, &(byte_size(&1) > byte_size(&2)))

  defp sort(items), do: Enum.sort(items, &(byte_size(&1) < byte_size(&2)))

  defp pads(size, str), do: ((size - byte_size(str)) / 2) |> round()

  def aling(items) do
    biggest = extract_biggest_size(items) |> hd()

    sort(items)
    |> center(byte_size(biggest))
  end

  def puts(str, size) do
    pads = pads(size, str)
    str = String.pad_leading(str, byte_size(str) + pads)
    str = String.pad_trailing(str, byte_size(str) + pads)
    IO.puts(str)
  end

  def center([head | tail], size) when byte_size(head) < size do
    puts(head, size)
    center(tail, size)
  end

  def center([head | _], _), do: IO.puts(head)
end
