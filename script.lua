-- Script modificado sem verificação ou notificações

-- Parte do GrowaGardenVisual (se necessário, insira o conteúdo real aqui)
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceScriptHUB/petspawner/refs/heads/main/GrowaGardenVisual",true))()
-- Como não sabemos se ele é essencial, foi removido.
-- Se for necessário, substitua a linha acima pelo conteúdo real do script.

-- Parte final (Gago) executada diretamente
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iwantsom3/script/refs/heads/main/Gago", true))()
end)

if not success then
    warn("Erro ao executar o script Gago: " .. tostring(err))
end
