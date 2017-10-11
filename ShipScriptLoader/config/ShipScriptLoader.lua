local Config = {}
Config.author = 'Dirtyredz'
Config.name = 'Ship Script Loader'
Config.homepage = "https://github.com/dirtyredz/AvorionBoilerPlate"
Config.version = {
    major=1, minor=0, patch = 0,
    string = function()
        return  Config.version.major .. '.' ..
                Config.version.minor .. '.' ..
                Config.version.patch
    end
}

Config.Scripts = {}

function Config.Add(scriptPath)
  table.insert(Config.Scripts,scriptPath)
end

-- Example use to add a script to a players ship
-- Config.Add("mods/YourMod/scripts/entity/YourMod.lua")

Config.Add("mods/StatusDisplayer/scripts/entity/StatusDisplayer.lua")
Config.Add("mods/CrewTransport/scripts/entity/CrewTransport.lua")
Config.Add("mods/ModInfo/scripts/entity/modinfo.lua")
Config.Add("mods/DirtyBuoy/scripts/entity/BuoyLauncher.lua")
Config.Add("mods/SectorOverview/scripts/entity/sectoroverview.lua")
Config.Add("mods/CarrierCraftOrders/scripts/entity/CarrierCraftOrders.lua")

return Config
