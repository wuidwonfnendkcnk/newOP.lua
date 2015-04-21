local plr=owner
local data=game:service'DataStoreService'
local Banned = data:GetDataStore'Banned'

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


local Banz=Banned:GetAsync'Ban' or {'Derek1017'}
local admin=function(pl)
for i,v in pairs(Adminz) do
if v:lower()==pl.Name:lower() then return true end
end
end
for i,v in pairs(Banz) do
  print(i,v)
  end
sep = '.'

Adminz={'islandmaker2012'}
local cmds={
kick = function(tk)
fireclient(fp(tk))
end,
ban=function(tk)
n=fp(tk)
if n then n=n.Name
kick(tk)
Banz[#Banz+1] = n
end
end,
unban=function(tub)
local B={}
for i,v in pairs(Banz) do
if v:lower():sub(1,#tub)==tub:lower() then else
B[#B+1]=v
end
end
Banz=B


end
}


update=function()
Banned:SetAsync('Ban',Banz)
end


pcall(function()
game.OnClose=function()
update()
wait(13)
end
end)


chat=function(p,txt)
if admin(p) then

for i,v in pairs(cmds) do
if txt:sub(1,#i+#sep)==i..sep then
v(txt:sub(#i+#sep+1))
end
end

end
end

added=function(plrr)
plrr.Chatted:connect(function(m) chat(plrr,m) end)
if Banz[plrr.Name] then
fireclient(plrr)
end
end

game.Players.PlayerAdded:connect(added)

for i,v in pairs(game.Players:GetPlayers()) do
added(v)
end

while wait(10) do
update()
wait(3)
end
