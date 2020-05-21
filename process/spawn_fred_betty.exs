defmodule SpawnFredBetty do
  def say(sender, name) do
    send(sender, "Hello #{name}")
  end

  def response(500), do: IO.puts "Process closed"

  def response(retry) do
    receive do
      message when is_bitstring(message) -> IO.puts(message)
    end

    response()
  end
end

main = self()

spawn(SpawnFredBetty, :say, [main, "Betty"])

spawn(SpawnFredBetty, :say, [main, "Fred"])

SpawnFredBetty.response()
