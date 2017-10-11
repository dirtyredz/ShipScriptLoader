local ShipScriptLoader = {}

function ShipScriptLoader.onPlayerLogIn(playerIndex)
  -- Adding script to player when they log in
  local player = Player(playerIndex)
  player:addScriptOnce("mods/ShipScriptLoader/scripts/player/ShipScriptLoader.lua")
  print('Script Loaded')
end

return ShipScriptLoader
