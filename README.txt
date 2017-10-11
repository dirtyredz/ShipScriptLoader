[center][color=red][size=36pt]ShipScriptLoader[/size][/color][/center]

A small mod designed to automatically load a script onto the players ship, regardless of if they change ships or not.
The script will always be loaded.

This mod will be extremly usefull to other modders and server owners.

[b][size=32pt]INSTALLATION[/size][/b]
[hr]

Step 1.
Unzip the zip file and drag/drop the contents into the avorion directory.

Step 2.
Navigate to:
    [quote]data/scripts/server/server.lua[/quote]

and place these 2 lines of code at the bottom of the file:

    [code]
    local s, b = pcall(require, 'mods/ShipScriptLoader/scripts/server/server')
    if s then if b.onPlayerLogIn then local a = onPlayerLogIn; onPlayerLogIn = function(c) a(c); b.onPlayerLogIn(c); end end end
    [/code]

Step 3.
Navigate to:
    [quote]mods/ShipScriptLoader/config/ShipScriptLoader.lua[/quote]

and add the script path of the script you want to autoload using the Config.Add() function

[b][size=32pt]DOWNLOAD[/size][/b]
[hr]
[url=https://github.com/dirtyredz/ShipScriptLoader/releases/download/1.0.0/ShipScriptLoader.v1.0.0.zip]ShipScriptLoader v1.0.0[/url]


[b][size=24pt]GITHUB[/size][/b]
[hr]
https://github.com/dirtyredz/ShipScriptLoader


[b][size=24pt]DONATE[/size][/b]
[hr]
Wanna show your appreciation?
http://dirtyredz.com/donate

Become a patron:
https://www.patreon.com/Dirtyredz

[b][size=24pt]MY OTHER MODS[/size][/b]
[hr]
[spoiler]
[b]DSM[/b]
-A project dedicated to server deployment, management, and exposing features to a web interface.
http://www.avorion.net/forum/index.php/topic,3507.0.html

[b]Reganerative Asteroid Fields[/b]
-Regenerates designated sectors, and randomly appearing sectors, of minable asteroids.
http://www.avorion.net/forum/index.php/topic,3055.0.html

[b]MoveUI[/b]
-A mod for adding custom UIs to the screen.
http://www.avorion.net/forum/index.php/topic,3834.0.html

[b]Subspace Corridor[/b]
-A modders recources, designed to mimick /teleport, due to server commands not being available through the api.
http://www.avorion.net/forum/index.php/topic,3148.0.html

[b]Dirty Buoy's[/b]
-Allows players to spawn Navigational and Sentry Buoys, More to come soon.
-These buoys have unique features players cant get in normal game play, for example: Navigational buoys are invincible and cannot be moved. A great way to mark a distance wreckage or minarable rich asteroid field.
--Rusty Servers only at the moment.

[b]LogLevels[/b]
-LogLevels gives modders the ability to set levels for there print functions.
-Aswell as allowing server owners to clean up there consoles, making it easier to read.
http://www.avorion.net/forum/index.php/topic,3799.0.html

[b]NoNeutralCore[/b]
-A small script for stopping the creation of neutral zones inside the core.
http://www.avorion.net/forum/index.php/topic,3472.0.html

[b]DirtyCargoExtender[/b]
-Extends the cargo hold of any NPC station discovered with low cargo holds.
--Patreon Members only

[b]DirtySecure[/b]
-A mod which assigned PVP or PVE sectors based on distance from core.
-Provides Offline Protection to Players ships.
-Provides protection for NPC stations.
--Rusty Servers only at the moment

[b]Reganerative Claimable Asteroids[/b]
-A mod which respawns claimable asteroids, when theyve been moved or turned into a mine.
-Also will unclaim or unsell an asteroid after a configured number of days
-Keeps the galaxy alive, providing claimable asteroids for new players.
--Rusty Servers only at the moment

[b]Death Info[/b]
-Used to track cords of a players death point, assigning player values, for other mods to use.
--Rusty Servers only at the moment.

[b]/Back[/b]
-A command using DeathInfo and Subspace Corridor, to teleport a players drone BACK to there death point.
--Rusty Servers only at the moment.

[b]DistCore HUD[/b]
-Displays distance to the core on the players hud
--Rusty Servers only at the moment.

Any mod listed as Rusty Servers only, are live and active on the Rusty Servers.
Want the mod for your server? Lets talk and ill see about releasing the mod to you/public.
Not all mods on Rusty will remain there, they will eventually be released to the public.
[/spoiler]
