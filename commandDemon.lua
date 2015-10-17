_G.tw=function(o1,o2,diff)
  local pos=o2.CFrame
  if diff then pos=pos*diff end
  pos=pos.p
  if (o1.Position-pos).magnitude<3 then return end
o1.CFrame=CFrame.new(o1.CFrame.p,pos)*CFrame.new(0,0,-1)
end
deadbutstanding={}
can=true
findd=function(obj)
  for i,v in pairs(deadbutstanding) do
    if v==obj then return true end
    end
  end
_G.fp=function(n)
  for i,v in pairs(workspace:GetChildren()) do
    if v.Name:lower():sub(1,#n)==n:lower() and v:findFirstChild'Torso' then return v end
    end
  end

move=false
dum=workspace:waitForChild'Dummy'
dum.Name=owner.Name.."'s Demon"

_G.Demonize=function(p)
  for i,V in pairs(p:children()) do
    if V:IsA'BasePart' then
V.BrickColor=BrickColor.new('Really black')
V.Transparency=0.1
V.Material='Neon'
if not V:findFirstChild'Fire' then
f=Instance.new("Fire",V)
f.Heat=15
f.Size=1
f.Color=Color3.new(255/255, 78/255, 19/255)
f.SecondaryColor=Color3.new(255/255, 145/255, 101/255)
s=f:clone()
s.Parent=V
s.Heat=5
s.Size=1
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
if h.Parent:findFirstChild'Torso' and not findd(h.Parent) then
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
dum.Archivable=true
dup=dum:clone()
owner.Chatted:connect(function(m)
if m:match'stop' or m:match('e'..'nd') then
move=false
follow=false
targ='none'
end
if m:match'follow' or m:match'come along' or (m:match'get your a' and m:match'ss over here') or m:match'cmere' or m:match'approach' then
follow=true
move=true
targ='none'
end

if m:match'begone' then
  can=false
  dum.Parent=game.Lighting
  dum:MakeJoints()
elseif m:match'return' and m:match'hell' then
  can=true
  dum.Parent=workspace
  dum:MakeJoints()
  dum.Torso.CFrame=CFrame.new(0,100,0)
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
    pcall(function()
    print(i,v)
  if i~=nil and v~=nil and (v:IsA'BasePart' or v:IsA'Model') then
    if v:IsA'BasePart' then repeat v=v.Parent until v:IsA'Model' or v==workspace end
    if v==workspace then a='nope' 
      print(a)
      elseif v:IsA'Model' and v:findFirstChild'Torso' then
      dum.Torso.CFrame=v.Torso.CFrame
    game.Debris:AddItem(v,0.4)
    deadbutstanding[i]=nil
  end

    wait()
  end
  end)

end

end
end)



while wait() do
  
  if not dum or not workspace:findFirstChild(owner.Name.."'s Demon") and can then
    dum=dup:clone()
    dum.Parent=workspace
    dum:MakeJoints()
    dum.Torso.CFrame = lastknown or CFrame.new(0,100,0)
    dum:MakeJoints()
    else pcall(function() lastknown=dum.Torso.CFrame end)
    end
  if not can then else
if targ~='none' and fp(targ) and fp(targ):findFirstChild'Torso' then
  if move and can then
tw(dum.Head,workspace:findFirstChild(fp(targ).Name).Torso)
end
end

if move and follow and can then
  tw(dum.Head,owner.Character.Head,CFrame.new(0,0,10))
  end
  
  end
end
