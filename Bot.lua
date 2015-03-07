local BOT=Instance.new("Part",Workspace)
BOT.Name='Botty'


match=function(t,ttm)
local str= t
local sub=1
for a=1,#ttm do
  local S=ttm:sub(a,a)
  local fin=false
  if sub>=#str then return true,sub end
    for i=sub,#str do
      if not fin then
        fin=true
          if S:lower()==str:lower():sub(i,i) then
            sub=sub+1
          end
      end
    end
end
return false
end





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
  otxt=txt
for i=1,#Responses do
txt=txt:lower()
local canrespond = false
for I=1,Responses[i].Num do
M,_=match(Responses[i].Main[I],txt) 
if M then
canrespond=true
txt = otxt:sub(_)
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
