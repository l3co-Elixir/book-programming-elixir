cars = [
  %{type: "sedan", mark: "fiat", color: "blue"},
  %{type: "hatch", mark: "ford", color: "red"},
  %{type: "compact", mark: "nissan", color: "yellow"}
]

Enum.each(cars, fn car ->
  Enum.each(Map.keys(car), fn key ->
    IO.puts("#{key} --> #{Map.get(car, key)}")
  end)
  IO.puts "=========================="
end)
