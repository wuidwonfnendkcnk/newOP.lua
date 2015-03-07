local BOT=Instance.new("Part",Workspace)
BOT.Name='Botty'






local Responses={

{
  Num = 3,
Main = {
"who",
"r",
"u"
}

,



Response = {
{"I am botty, how goes it",function(self,plr) return (", "..plr.Name.."?") end}
}
}




,




{
  Num = 4,
Main = {
'w',
'at',
's',
'up'
}

,

Response = {
{"Nm, hbu",function(self,plr) return ', '..plr.Name end}
}
}



}



local Chat=function(respT,PLR)
T=(respT[1]..respT[2](nil,PLR))
  game:service'Chat':Chat(BOT,T)
end

local findmatch=function(P,txt)
for i=1,#Responses do
txt=txt:lower()
local canrespond = false
for I=1,Responses[i].Num do
if match(Responses[i].Main[I]) then
canrespond=true
else
return false
end
if canrespond then
Chat(Responses[i].Response[math.random(1,#Responses[i].Response)],P)
  end
end
end
end


for i,P in pairs(game.Players:children()) do
  P.Chatted:connect(function(M) findmatch(P,M) end)
end

game.Players.ChildAdded:connect(function(P)
  P.Chatted:connect(function(M) findmatch(P,M) end)
  end)
