function contarOcorrencias(tabela, alvo)
    local contador = 0

    for i = 1, #tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end

    return contador
end

local N = tonumber(io.read())
local tabela = {}

for i = 1, N do
    tabela[i] = tonumber(io.read())
end

local X = tonumber(io.read())
local resultado = contarOcorrencias(tabela, X)

print(resultado)
