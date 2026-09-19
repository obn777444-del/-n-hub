local needverify = true

function safeload(url)
  task.spawn(function()
    loadstring(game:HttpGet(url))()
  end)
end

if needverify then
  setclipboard("https://discord.gg/8sk4Rk82e")
  game.Players.LocalPlayer:Kick("Buy half in: https://discord.gg/8sk4Rk82e")
else
  -- Bruh,now need key
  safeload("https://api.luarmor.net/files/v4/loaders/1104e12d2c78875049530a9f7bf5e810.lua")
end
