function filtrarMaiores(tabela, limite)
    local novaTabela = {}

    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(novaTabela, tabela[i])
        end
    end

    return novaTabela
end

local N = tonumber(io.read())
local tabela = {}

for i = 1, N do
    tabela[i] = tonumber(io.read())
end

local K = tonumber(io.read())
local resultado = filtrarMaiores(tabela, K)

for i = 1, #resultado do
    print(resultado[i])
end
