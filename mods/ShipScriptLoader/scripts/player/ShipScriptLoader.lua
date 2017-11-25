if not onServer then onServer = function() return false end end
if not onClient then onClient = function() return false end end
if onClient() then return end

if onServer() then

  -- namespace ShipScriptLoader
  ShipScriptLoader = {}

  --For EXTERNAL configuration files
  exsist, ShipScriptLoaderConfig = pcall(require, 'mods/ShipScriptLoader/config/ShipScriptLoader')

  ShipScriptLoader.Scripts = ShipScriptLoaderConfig.Scripts or {}

  function ShipScriptLoader.initialize()
      Player():registerCallback("onShipChanged", "onShipChanged")
      local CurrentShip = Player().craftIndex
      ShipScriptLoader.onShipChanged(Player().index, CurrentShip)
  end

  function ShipScriptLoader.onShipChanged(playerIndex, craftIndex)
    if Player().index ~= playerIndex then return end  --WTF, why is this function run against every player?
    local ship = Entity(craftIndex)
    if not ship then return end
    local faction = Faction(ship.factionIndex)
    if faction.isPlayer or faction.isAlliance then
      for _,script in pairs(ShipScriptLoader.Scripts) do
        if not ship:hasScript(script) then
            local test = script:gsub(".lua", "")
            local e,s = pcall(require,test)
            if e then
                ship:addScriptOnce(script)
            else
                print('Failed to locate script:',script)
            end
        end
      end
    end
  end
end
