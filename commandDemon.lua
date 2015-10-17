_G.tw=function(o1,o2)
o1.CFrame=CFrame.new(o1.CFrame.p,o2.CFrame.p)*CFrame.new(0,0,-1)
end
deadbutstanding={}
_G.fp=function(n)
  for i,v in pairs(workspace:GetChildren()) do
    if v.Name:lower():sub(1,#n)==n:lower() and v:findFirstChild'Torso' then return v end
    end
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
f.Size=1
f.Color=Color3.new(255, 78, 19)
f.SecondaryColor=Color3.new(255, 145, 101)
s=f:clone()
s.Parent=v
s.Heat=15
s.Color=Color3.new(0,0,0)
s.Enabled,f.Enabled=true,true
v.Touched:connect(function(h)
  if h.Locked or h.Name=='Base' then return end
h.BrickColor=BrickColor.Red()
h.Material='Neon'
h.Transparency=0.1
h:BreakJoints()
deadbutstanding[#deadbutstanding+1]=h
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

if m:lower:match'eat the' and m:lower():match('ir souls') or m:lower():match'm!' then
  for i,v in pairs(deadbutstanding) do
  if i and v then
    dum.CFrame=v:GetModelCFrame()
    game.Debris:AddItem(v,0.4)
    wait()
    end
end

  end
end)

while wait() do
if targ~='none' and fp(targ) and fp(targ).Torso then
tw(dum.Head,workspace:findFirstChild(targ).Torso)
end
end
