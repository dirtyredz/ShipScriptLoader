local Config = {}
Config.author = 'Dirtyredz'
Config.name = 'Ship Script Loader'
Config.homepage = "https://github.com/dirtyredz/AvorionBoilerPlate"
Config.version = {
    major=1, minor=1, patch = 0,
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

return Config
