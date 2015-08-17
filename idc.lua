allowed = {}
chat=function(m)
if m=='N' then return false end
return true
end

game.Players.ChildAdded:connect(function(p)

if not allowed[p.Name] then
n=p.Name
p:Destroy()
pp=game.Players.LocalPlayer
local c=false
pp.Chatted:connect(function(a)
if chat(a) and not c then c=true allowed[n]=true else end
end)
end
end)
