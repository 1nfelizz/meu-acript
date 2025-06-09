-- Proteção extra: anula qualquer tentativa de kick
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
LocalPlayer.Kick = function() end
-- Também sobrescreve namecall para evitar kicks por metatable
local mt = getrawmetatable(game)
local backup = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "Kick" then return end
    return backup(...)
end)
setreadonly(mt, true)

-- SERVE-SE DO CÓDIGO DOS SCRIPTS "No" e "AdoptMeDupeHub" aqui embaixo:
-- =======================================================================
-- -- BEGIN No.lua (conteúdo original do script "No")
-- [Coloque aqui todo o código Lua que estava em
--  https://raw.githubusercontent.com/PlsNoNoob/-/refs/heads/main/No]
-- =======================================================================
-- -- BEGIN AdoptMeDupeHub.lua (conteúdo original)
-- [Coloque aqui todo o código Lua que estava em
--  https://raw.githubusercontent.com/iwantsom3/script/refs/heads/main/AdoptMeDupeHub]
-- =======================================================================

-- Exemplo lógico: inicia todos os scripts necessários num só:
local function initAll()
    -- Aqui rodaria o conteúdo do "No"
    if NoInit then
        pcall(NoInit) -- NoInit representa a função principal do script "No"
    end
    -- Aqui o hub de dupes do Adopt Me
    if DupeHubInit then
        pcall(DupeHubInit) -- DupeHubInit do script AdoptMeDupeHub
    end
end

-- Executa o init
initAll()

-- Opcional: confirmação
game.StarterGui:SetCore("SendNotification", {
    Title = "✅ Exploit ativo",
    Text = "Grow a Garden funcionando!",
    Duration = 5
})
