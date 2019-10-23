
#SOMASI - Soma simples
#https://br.spoj.com/problems/SOMASI/

vezes = IO.gets("") |> String.trim() |> String.to_integer()

defmodule Soma do
    def execute(vezes, result) do

        if vezes >= 1 do
            soma = IO.gets("")
                            |> String.trim()
                            |> String.split(" ", trim: true)
                            |> Enum.take(2)
                            |> Enum.map(fn(num) -> String.last(num) end)
                            |> Enum.map(fn(num) -> String.to_integer(num) end)
                            |> Enum.sum()

            if rem(soma, 2) == 1 do
                execute(vezes-1, result++ ["Impar"])
            else
                execute(vezes-1, result++ ["Par"])
            end

        else
            Enum.map(result, fn(r) -> IO.puts(r) end)
        end
    end
end

Soma.execute(vezes, [])
