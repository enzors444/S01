function gerarTabelaPotencias(inicio, fim, base)
    for expoente = inicio, fim do
        local resultado = base ^ expoente
        print(base .. " ^ " .. expoente .. " = " .. resultado)
    end
end

local M = tonumber(io.read())
local N = tonumber(io.read())
local base = tonumber(io.read())

gerarTabelaPotencias(M, N, base)
