local jet = Instance.new("Model",Workspace)
jet.Name = 'Jet'

check=function(OB)
local chars={}
for i,v in pairs(workspace:children()) do
 if v:findFirstChild'Torso' then chars[#chars+1] = v end
end

for i,v in pairs(chars) do
 if (v.Torso.Position-OB.Position).magnitude<6 then
  return v.Torso
  end
 end
 end

local engine = Instance.new("Part",jet)
engine.FormFactor ='Custom'
engine.Size = Vector3.new(4,0.5,8)
engine.BrickColor = BrickColor.Red()
engine.Name = 'Engine'

local Bullet=Instance.new("Part")
Bullet.Size=Vector3.new(1,1,1)
Bullet.Shape='Ball'
Bullet.BrickColor = BrickColor.Yellow()
Bullet.Name='Bullet'

local Missile = Instance.new("Part")
Missile.Size=Vector3.new(1,1,2)
Missile.BrickColor=BrickColor.Black()
Missile.Name='Missile'

local wings = engine:clone()
wings.Name = 'Wing'

wings.Anchored = true
engine.Anchored = true
 wings.Parent = engine
 
 local bckup=jet:clone()
local set = function()

  coroutine.wrap(function()

    wings.CFrame = engine.CFrame*CFrame.Angles(0,math.rad(90),0)
  end)()
  
end

coroutine.wrap(function()
while wait() do set() end
end)()

local cf = CFrame.new(10,50,-30)


move = function(o)
if o==engine then
  cf=cf*CFrame.new(0,0,-5)

else
o.CFrame=o.CFrame*CFrame.new(0,0,-6)
a=check(o)
if a then o.CFrame=a.CFrame end
end
end

rot = function(ang)

cf=cf*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(ang==1 and 5 or -5),math.rad(math.random(-5,5)) )

end

target = function(obj)
  if not obj then return end
cf = CFrame.new(engine.Position,obj.Position+Vector3.new(0,1,0))
engine.CFrame= cf
wait(0)
end

curr=nil

gettarget=function()
  local canfireat={}
  for i,v in pairs(Workspace:children()) do
    if v:IsA'Model' and v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
      canfireat[#canfireat+1] = v.Torso
      end
  end
  
  local x=200
  local z = 200
  Next=nil
  for i,v in pairs(canfireat) do
    mag = Vector3.new((v.Position.X-engine.Position.X),0,(v.Position.Z-engine.Position.Z))
    if mag.X<0 then mag=Vector3.new(-mag.X,mag.Y,mag.Z)
      
  end
  if mag.Z<0 then mag=Vector3.new(mag.X,mag.Y,-mag.Z) end
    xx,zz = mag.X, mag.Z
    ----print(xx,zz,v.Parent.Name)
    if xx<x then
      x = xx
      --print'yep'
    end
    
     if zz<z then
      z = zz
      --print'yep'
    end
    
    if xx==x then
      if zz==z then
        Next=v
        --print'yup'
        end
    end
    
  end
  
  --print(Next)
    return Next

  end

resp=function()
  AIM=false
 curr=nil
  end

Match=function(str)
 local n={'Head','Torso','Right Arm','Left Arm', 'Right Leg', 'Left Leg'}
 for i,v in pairs(n) do
  if str==v then return true end
  end
 end

Fire=function(Obj)
Obj.Anchored=true
game.Debris:AddItem(Obj,7)
Obj.Touched:connect(function(h) Obj:explode() game.Debris:AddItem(Obj,0.2) if Match(h.Name) then curr=nil AIM=false for i=1,20 do rot(1) wait(0) end resp() end end)
coroutine.wrap(function()
while true do
  if Obj.Name=='Missile' then
    wait()
  else
    wait(0)
    end
move(Obj)
end
end)()
end


local fire = function(Type)
  if Type=='Missile' then
M=Missile:clone()
M.Parent=Workspace
M.CFrame = engine.CFrame*CFrame.new(0,-3,-1)
Fire(M)
else
M=Bullet:clone()
M.Parent=Workspace
M.CFrame = engine.CFrame*CFrame.new(0,-2,-2)
Fire(M)
  end
end

local fix=function()
 if not jet or jet.Parent~=workspace then
  pcall(function() jet:Destroy() end)
  jet=bckup:clone()
  jet.Parent=workspace
  engine=jet.Engine
  resp()
  wings = engine.Wing
  end
 end


while wait() do
 fix()
 if cf.Y<10 then
  rot(math.random(0,1))
  end
  if AIM and curr then
    target(curr)
    pcall(function()
    cf = CFrame.new(engine.Position,curr.Position)*CFrame.new(0,0,-1)
    end)
    --print'moved towards targ'
    end
move(engine)
engine.CFrame=cf
if not AIM then
  if ((math.random(10,25)/10)<2) then
rot(1)
else
rot(0)
end
else
--print'aiming, noob'
end

if curr == nil then

  if (function() a= math.random(500,10000) return a<9000 and a>8800 end) then
curr=gettarget()
if not curr then --print 'WTF' 
  else
--print(curr.Parent.Name,'ftw')
end
  end
end
if curr~=nil then
target(curr)
AIM=true
--print'AIMING'
pcall(function()
print('targ is '..curr.Parent.Name)
end)
if math.random(10,100)>40 then
fire(math.random(3)==1 and 'Bullet' or 'Missile')
--print'fire!'

end
end


end
