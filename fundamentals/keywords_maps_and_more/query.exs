people = [
  %{name: "Grumpy", height: 1.24},
  %{name: "Dave", height: 1.88},
  %{name: "Dopey", height: 1.32},
  %{name: "Shaquille", height: 2.16},
  %{name: "Sneezy", height: 1.28}
]

IO.inspect(for person = %{height: height} <- people, height > 1.5, do: person)

# Read

## interaction and match height
### %{height: height} <- people

## Filter
### height > 1.5

## Bind
# each elemect that match with condiction is bind in person

# Do return person
