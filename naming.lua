names={}
for i,v in pairs(game.Players:children()) do
nom=v.Name
names[#names+1]=nom:sub(1,math.floor(#nom/2))
names[#names+1]=nom:sub(math.floor(#nom/2))
end

_G.newName=function()
local N=''
for i=1,math.random(2,5) do
N=N..names[math.random(1,#names)]
if math.random(1,5)==2 then
N=N..math.random(50,5000)
end
end

return N
end
