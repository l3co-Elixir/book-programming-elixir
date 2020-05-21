defmodule SpawnMessage do
  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
    end
  end
end

pid = spawn(SpawnMessage, :greet, [])

send(pid, {self(), "World"})

receive do
  {:ok, message} -> IO.puts(message)
end
