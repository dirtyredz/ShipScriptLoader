# ShipScriptLoader

A small mod designed to automatically load a script onto the players shit, regardless of if they change ships or not.
The script will always be loaded.

This mod will be extremly usefull to other modders and server owners.

## INSTALLATION
___

Step 1.
Unzip the zip file and drag/drop the contents into the avorion directory.

Step 2.
Navigate to:

    data/scripts/server/server.lua

and place these 2 lines of code at the bottom of the file:

    local s, b = pcall(require, 'mods/AvorionBoilerPlate/scripts/server/server')
    if s then if b.onPlayerLogIn then local a = onPlayerLogIn; onPlayerLogIn = function(c) a(c); b.onPlayerLogIn(c); end end end

Step 3.
Navigate to:

    mods/ShipScriptLoader/config/ShipScriptLoader.lua

and add the script path of the script you want to autoload using the Config.Add() function

## DOWNLOAD
___
https://github.com/dirtyredz/ShipScriptLoader/releases/download/1.0.0/ShipScriptLoader.v1.0.0.zip

## MY OTHER MODS
___
__DSM__
-A project dedicated to server deployment, management, and exposing features to a web interface.
http://www.avorion.net/forum/index.php/topic,3507.0.html

__Reganerative Asteroid Fields__
-Regenerates designated sectors, and randomly appearing sectors, of minable asteroids.
http://www.avorion.net/forum/index.php/topic,3055.0.html

__MoveUI__
-A mod for adding custom UIs to the screen.
http://www.avorion.net/forum/index.php/topic,3834.0.html

__Subspace Corridor__
-A modders recources, designed to mimick /teleport, due to server commands not being available through the api.
http://www.avorion.net/forum/index.php/topic,3148.0.html

__Dirty Buoy's__
-Allows players to spawn Navigational and Sentry Buoys, More to come soon.
-These buoys have unique features players cant get in normal game play, for example: Navigational buoys are invincible and cannot be moved. A great way to mark a distance wreckage or minarable rich asteroid field.
--Rusty Servers only at the moment.

__LogLevels__
-LogLevels gives modders the ability to set levels for there print functions.
-Aswell as allowing server owners to clean up there consoles, making it easier to read.
http://www.avorion.net/forum/index.php/topic,3799.0.html

__NoNeutralCore__
-A small script for stopping the creation of neutral zones inside the core.
http://www.avorion.net/forum/index.php/topic,3472.0.html

__DirtyCargoExtender__
-Extends the cargo hold of any NPC station discovered with low cargo holds.
--Patreon Members only

__DirtySecure__
-A mod which assigned PVP or PVE sectors based on distance from core.
-Provides Offline Protection to Players ships.
-Provides protection for NPC stations.
--Rusty Servers only at the moment

__Reganerative Claimable Asteroids__
-A mod which respawns claimable asteroids, when theyve been moved or turned into a mine.
-Also will unclaim or unsell an asteroid after a configured number of days
-Keeps the galaxy alive, providing claimable asteroids for new players.
--Rusty Servers only at the moment

__Death Info__
-Used to track cords of a players death point, assigning player values, for other mods to use.
--Rusty Servers only at the moment.

__/Back__
-A command using DeathInfo and Subspace Corridor, to teleport a players drone BACK to there death point.
--Rusty Servers only at the moment.

__DistCore HUD__
-Displays distance to the core on the players hud
--Rusty Servers only at the moment.

Any mod listed as Rusty Servers only, are live and active on the Rusty Servers.
Want the mod for your server? Lets talk and ill see about releasing the mod to you/public.
Not all mods on Rusty will remain there, they will eventually be released to the public.
