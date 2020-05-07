defmodule Guard do
  def what_is(n) when is_bitstring(n), do: "This is a string"
  def what_is(n) when is_integer(n), do: "This is an interger"
  def what_is(n) when is_atom(n), do: "This is an atom"
  def what_is(n) when is_list(n), do: "This is a list"
  def what_is(_), do: "I don't know what is this :-["
end
