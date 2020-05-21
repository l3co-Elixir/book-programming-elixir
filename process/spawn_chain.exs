defmodule SpawnChain do
  def counter(next_pid) do
    receive do
      n -> send(next_pid, n + 1)
    end
  end

  def create_processes(n) do
    code_to_run = fn _, send_to ->
      spawn(SpawnChain, :counter, [send_to])
    end

    last = Enum.reduce(1..n, self(), code_to_run)

    send(last, 0)

    receive do
      final_anwser when is_integer(final_anwser) ->
        "Result is #{inspect(final_anwser)}"
    end
  end

  def run(n) do
    :timer.tc(SpawnChain, :create_processes, [n])
    |> IO.inspect()
  end
end
