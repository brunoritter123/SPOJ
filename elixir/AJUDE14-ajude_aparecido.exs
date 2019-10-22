
#AJUDE14 - Ajude Aparecido
#https://br.spoj.com/problems/AJUDE14/

#Informe quantidade de pessoas:
pessoas = IO.gets("") |> String.trim() |> String.to_integer()

#Informe valores pagos:
valores_pagos = IO.gets("") |> String.trim() |> String.split(" ", trim: true) |> Enum.take(pessoas)
valores_somados = valores_pagos |> Enum.map(&String.to_integer/1) |> Enum.sum()

#Informe a soma dos valores:
soma_informada = IO.gets("") |> String.trim() |> String.to_integer()

if valores_somados == soma_informada do
    IO.puts("Acertou")
else
    IO.puts("Errou")
end