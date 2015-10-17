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

_G.Demonize=_G.Demonize or function(p)
  for i,V in pairs(p:children()) do
    if V:IsA'BasePart' then
V.BrickColor=BrickColor.new('Really black')
V.Transparency=0.1
V.Material='Neon'
if not V:findFirstChild'Fire' then
f=Instance.new("Fire",V)
f.Heat=2
f.Size=0.1
f.Color=Color3.new(255/255, 78/255, 19/255)
f.SecondaryColor=Color3.new(255/255, 145/255, 101/255)
s=f:clone()
s.Parent=V
s.Heat=1
s.Size=0.1
s.Color=Color3.new(0,0,0)
s.Enabled,f.Enabled=true,true
end
V.Touched:connect(function(h)
  h.Locked=false
  pcall(function() h.Parent.Archivable=true end)
  if h.Name=='Base' then return end
h.BrickColor=BrickColor.Red()
h.Material='Neon'
h.Transparency=0.1
h:BreakJoints()
if h.Parent:findFirstChild'Torso' then
deadbutstanding[#deadbutstanding+1]=h.Parent
end
end)
elseif V:IsA'Hat' or V:IsA'Clothing' then
V:Destroy()
    end
  end
end
targ='none'
Demonize(dum)

owner.Chatted:connect(function(m)
if m:match'stop' or m:match('e'..'nd') then
move=false
targ='none'
end


if m:lower():sub(1,5)=="targ'" then
targ=m:lower():sub(6)
targ=fp(targ).Name
if targ then
move=true
else
targ='none'
end
end
        
if m:lower():match('eat the') and ( (m:lower():match('ir souls')) or (m:lower():match('m!'))) then
  for i,v in pairs(deadbutstanding) do
  if i~=nil and v~=nil and v:IsA'BasePart' or v:IsA'Model' then
    if v:IsA'BasePart' then repeat v=v.Parent until v:IsA'Model' or v==workspace end
    if v==workspace then a='nope' 
      elseif v:IsA'Model' then
      dum.Torso.CFrame=v.Torso.CFrame
    game.Debris:AddItem(v,0.4)
    deadbutstanding[i]=nil
    end
    wait()
  end
  end
end

end)



while wait() do
if targ~='none' and fp(targ) and fp(targ):findFirstChild'Torso' then
tw(dum.Head,workspace:findFirstChild(fp(targ).Name).Torso)
end
end
