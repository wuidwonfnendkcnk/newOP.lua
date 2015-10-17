_G.newenv=function()
local own=getfenv(0).owner
env={
owner=game.Players.islandmaker2012,
players=game.Players,
GetBase=function() print(workspace.Base or 'cant find') return workspace.Base or 'cant find' end,
lighting=game.Lighting,
noob=own,
script=function(code,name) NS(code,workspace).Name = name or 'Script' end,
getfenv=function() return env end}
for i,v in pairs(env) do
getfenv(0)[i]=v
end
end
