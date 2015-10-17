_G.tw=function(o1,o2)
o1.CFrame=CFrame.new(o1.CFrame.p,o2.CFrame.p)*CFrame.new(0,0,-1)
end

move=false
dum=workspace:waitForChild'Dummy'
dum.Name=owner.Name.."'s Demon"

Demonize=_G.Demonize or function(p)
  for i,v in pairs(p:children()) do
    if v:IsA'BasePart' then
v.BrickColor=BrickColor.Black()
v.Transparency=0.1
v.Material='Neon'
f=Instance.new("Fire",v)
f.Heat=25
f.Color=Color3.new(255, 78, 19)
f.SecondaryColor=Color3.new(255, 145, 101)
s=f:clone()
s.Parent=v
s.Heat=15
s.Color=Color3.new(0,0,0)
s.Enabled,f.Enabled=true,true
v.Touched:connect(function(h)
h.BrickColor=BrickColor.Red()
h.Material='Neon'
h.Transparency=0.1
h:BreakJoints()
end)
elseif v:IsA'Hat' or v:IsA'Clothing' then
v:Destroy()
    end
  end
end
targ='none'
Demonize(dum)
owner.Chatted:connect(function(m)
if m:lower():match('stop') or m:lower():match'end' then
move=false
targ='none'
else
if m:lower():sub(1,5)=="targ'" then
targ=m:lower():sub(6)
targ=fp(targ).Name
if targ then
move=true
else
targ='none'
end
end

end
end
end)

while wait() do
if targ~='none' and fp(targ) and fp(targ).Torso then
tw(dum.Head,workspace:findFirstChild(targ).Torso)
end
end
