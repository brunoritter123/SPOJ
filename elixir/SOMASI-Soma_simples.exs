
#SOMASI - Soma simples
#https://br.spoj.com/problems/SOMASI/

defmodule Soma do
    def execute() do
        soma = IO.gets("")
                        |> String.trim()
                        |> String.split(" ", trim: true)
                        |> Enum.take(2)
                        |> Enum.map(fn(num) -> String.last(num) end)
                        |> Enum.map(fn(num) -> String.to_integer(num) end)
                        |> Enum.sum()

        if rem(soma, 2) == 1 do
            IO.puts("Impar")
        else
            IO.puts("Par")
        end
    end
end

Soma.execute()
