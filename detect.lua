local plr=game.Players.LocalPlayer
invisible=false
m=plr:GetMouse()
char=plr.Character
invi=function(o,n)
ypcall(function() o.Transparency= o.Name=='HumanoidRootPart' and 1 or n end)
for i,v in pairs(o:children()) do
  pcall(function() invi(v) v.face:Destroy() end)
  if v:IsA'BasePart' and (v.Name~='HumanoidRootPart' or n==1)then v.Transparency=n end
  if v:IsA'Hat' or v:IsA'Clothing' then
    v:Destroy() end
  end
end



GetChar=function()
local ret={}
for i,v in pairs(workspace:children()) do
if v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
  if v.Name~=plr.Name then
ret[#ret+1]=v
end
if invisible and v.Name==plr.Name then
  ret[#ret+1]=v
  end
end
end
return ret
end

cv=function(o)
  a=function()
    if o:IsA'BasePart' and o.Transparency==1 and (o.Name~='HumanoidRootPart') then
      return o.Name=='Torso' or o.Name=='Head'
      end
  end
  return a()
  end
coroutine.wrap(function()
while wait(0.25) do
pcall(function() workspace.CurrentCamera:clearAllChildren() end)
local chars=GetChar()
  for i,v in pairs(chars) do
  t=false
  v.Archivable=true
  cl=v:clone()
  coroutine.wrap(function()
    t=cv(v:waitForChild'Head')
    if t then t=cv(v.Torso) end
    if t then
    
    for i,v in pairs(cl:children()) do
      pcall(function() v.face:Destroy() end)
    if v:IsA'Hat' or v:IsA'Clothing' or v:IsA'CharacterMesh' or v:IsA'Humanoid' then
    v:Destroy()
    elseif v:IsA'BasePart' then v.Transparency=0.5 v.BrickColor=BrickColor.New'Really red' v.CanCollide=false v.Anchored=true
    end
  end
  cl.Parent=workspace.CurrentCamera
  cl.Torso.CFrame=v.Torso.CFrame
  end
    end)()
  end
end
end)()

m.KeyDown:connect(function(k)
 
  if k~='t' then return end
  invisible=not invisible
  if invisible then invi(plr.Character,1) else invi(plr.Character,0) end
  
end)

local ra=plr.Character['Right Arm']

local t=plr.Character.Torso

local c=plr.Character

local w=Instance.new("Weld",ra)
w.Part0=ra
w.Part1=t
w.C0=CFrame.new(-1.25,1.5,0)
local sword=Instance.new("Part",c)
sword.FormFactor='Custom'
  sword.Size=Vector3.new(0.5,2,0.75)
  local w2=Instance.new("Weld",sword)
  w2.Part0=sword
  w2.Part1=ra
  w2.C0=CFrame.new(0,(((ra.Size.Y/2)+0.875)),0)
local hand=Instance.new("Part",c)
hand.FormFactor='Custom'
hand.Size=Vector3.new(1,0.25,0.75)
local w3=Instance.new("Weld",hand)
w3.Part0=hand
w3.Part1=sword
w3.C0=CFrame.new(0,-0.5,0)
cf=w.C0
w.C0=w.C0*CFrame.Angles(math.rad(180),0,math.rad(25))
  CO=w.C0
  dwn=false
m.Button1Down:connect(function()
  char:makeJoints()
  if dwn then return end
  dwn=true
  cf=CFrame.new(-1.25,1.5,0)
  for _=180,180+90,10 do
    w.C0=cf*CFrame.Angles(math.rad(_),0,math.rad((25/90)*(_-90)))*CFrame.new(0,-(((_-180)/90)/2),0)
    wait(0)
  end
  cf=CFrame.new(-1.25,1.5,0)
 for _=180+90,180,-10 do
    w.C0=cf*CFrame.Angles(math.rad(_),0,math.rad((25/90)*(_-90)))*CFrame.new(0,-(((_-180)/90)/2),0)
    wait(0)
  end
  w.C0=CO
  cf=CFrame.new(-1.25,1.5,0)
  dwn=false
end)

Endit=function(obj,vel)
  if obj.Name=='Base' then return end
  obj.BrickColor=BrickColor.New'Really Black'
  obj.Transparency=0.1
  local last='Neon'
  for i=1,10 do obj.Transparency=i/10 
    wait(0.2)
    if last=='Neon' then 
      obj.Material='Grass' last='Grass' else obj.Material='Neon' last='Neon' end
  end
  
  for i=10,5,-0.25 do
    obj.Transparency=i/10
    obj.BrickColor=BrickColor.new'Really red'
    obj.Material='Neon'
    wait(0)
  end
  local r=function() return math.rad(math.random(-360,360)) end
  obj.Anchored=true
  wait(2)
  if vel then
  obj.Anchored=false
  
  obj:breakJoints()
  obj.Anchored=false
  obj.Velocity=Vector3.new(math.random(-3000,5000),math.random(-3000,2000),math.random(-1000,3000))
    end
  end

sword.Touched:connect(function(h)
  if dwn then
    Endit(h,true)
    end
  end)

local dwn2=false

link=function(OBJ1,OBJ2,T)
  local connect=Instance.new("Part",OBJ2)
  coroutine.wrap(function()
    while wait(0) and connect and OBJ2 and OBJ1 do
  pos1,pos2=Vector3.new(OBJ1.CFrame.X,0,OBJ1.CFrame.Z),Vector3.new(OBJ2.CFrame.X,0,OBJ2.CFrame.Z)
  local dist=(pos1-pos2).magnitude
  local pos=CFrame.new(OBJ1.CFrame.p,OBJ2.CFrame.p)
  connect.Size=Vector3.new(1,1,dist)
  connect.Anchored=true
  connect.BrickColor=BrickColor.Red()
  connect.Material='Neon'
  connect.CanCollide=false
  connect.CFrame=pos*CFrame.new(0,0,-(dist/2))
    end
    end)()
    game.Debris:AddItem(connect,T)
  end

holycrap=function()
if dwn2 then return end
dwn2=true
local part=Instance.new("Part",workspace.Base)
part.Shape='Cylinder'
part.FormFactor='Custom'
part.Size=Vector3.new(1,5,5)
part.CFrame=char.Torso.CFrame*CFrame.new(0,0,-5)
repeat part.CFrame=part.CFrame*CFrame.new(0,-1,0) until part.CFrame.Y<=workspace.Base.CFrame.Y
part.CFrame=part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(90))
part.Anchored=true
part.CanCollide=false

local sphere=Instance.new("Part",part)
sphere.Size=Vector3.new(1,1,1)
sphere.Shape='Cylinder'
sphere.Anchored=true
sphere.CanCollide=false
diff=0
coroutine.wrap(function()
  
  while wait(0) and part and part.Parent and part~=nil do
    num=(part.Size.X/2)+sphere.Size.X/2
    sphere.CFrame=part.CFrame*CFrame.new(num-diff,0,0)
    end
  end)()
cf=part.CFrame
for i=1,10 do
  part.Size=part.Size+Vector3.new(1,0,0)
  part.CFrame=cf*CFrame.new((i/2),0,0)

  wait(0)
end
cf=sphere.CFrame
for i=1,10 do
  sphere.Size=sphere.Size+Vector3.new(0.01,1,1)
  sphere.CFrame=cf
  wait(0)
  end
coroutine.wrap(function()
Endit(part,false)
end)()
Endit(sphere,false)
for i=1,20 do wait(0) diff=i/2 end
for i=1,3 do sphere.Size=sphere.Size+Vector3.new(1,0,0) wait() end
local CAN=true
sphere.Touched:connect(function(h) 
  if not CAN then return end
  if h.Parent~=char then if h.Parent:findFirstChild'Torso' then link(part,h.Parent.Torso,7) end Endit(h,true)  end
end)
CFZ=sphere.CFrame
asd=5
for i=1,100,asd do
  sphere.Size=sphere.Size+Vector3.new(0,asd,asd)
sphere.CFrame=CFZ
  wait(0)
end
wait(1)
CAN=false

for i=1,100,asd do
  sphere.Size=sphere.Size+Vector3.new(0,-asd,-asd)
  sphere.CFrame=CFZ
  wait(0)
end
wait(1)
for i=1,3 do sphere.Size=sphere.Size+Vector3.new(-1,0,0) sphere.CFrame=CFZ wait() end
for i=20,0,-2 do wait(0) diff=i/2 end
for i=1,10,2 do
  sphere.Size=sphere.Size-Vector3.new(0.02,2,2)
  sphere.CFrame=CFZ
  wait(0)
end
game.Debris:AddItem(part,1.25)
game.Debris:AddItem(sphere,1.25)
for i=1,10,2 do
  part.Size=part.Size-Vector3.new(2,0,0)
  part.CFrame=cf*CFrame.new(-i,0,0)

  wait(0)
end
wait(1)
dwn2=false
end

Hand=function()
  local mod=Instance.new("Model",workspace.Base)
  mod.Name='HAND'
  local middle=Instance.new("Part",mod)
  middle.Size=Vector3.new(15,15,3)
  middle.Anchored=true
  middle.CFrame=char.Torso.CFrame*CFrame.new(0,20,-20)
  middle.Anchored=true
  return mod
end

Fire=function() 
local start=Control.Part.CFrame
local bl=Instance.new("Part",Control)
bl.Size=Vector3.new(1,1,1)
bl.Shape='Ball'
bl.BrickColor=BrickColor.New'Toothpaste'
bl.Anchored=true
bl.CFrame=start*CFrame.new(0,0,-3)
for i=1, 5, 0.5 do
  bl.Material='Neon'
  bl.Size=bl.Size+Vector3.new(1,1,1)
  bl.CFrame=start*CFrame.new(0,0,-i)
  wait(0)
end
bl.Anchored=false
bl:breakJoints()
local bg=Instance.new("BodyGyro",bl)
bg.CFrame=CFrame.new((bl.CFrame).p)+Vector3.new(0,-30,0)
bg.MaxTorque=Vector3.new(99999,99999,99999)
bg.D=0
bg.P=100000
end
b=workspace:WaitForChild'Base':clone()
m.KeyDown:connect(function(k)
  if k=='p' then
    holycrap() end
  if k=='f' then
    if connected and Control then
      Fire()
      end
    end
  if k=='h' then 
    if connected then 
      connected=false
      Control:Destroy() return end
    if not workspace:findFirstChild'Base' then b:clone().Parent=workspace end
    if not workspace.Base:findFirstChild'HAND' then
    Control=Hand()
    Main=Control.Part.CFrame
  else
     connected=true
    m.Move:connect(function()
      if not connected then return end
      if connected then
        Control.Part.CFrame=CFrame.new(Main.p,m.Hit.p)
        end
      end)
  end
  end
end)

