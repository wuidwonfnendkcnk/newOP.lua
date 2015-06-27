local jet = Instance.new("Model",Workspace)
jet.Name = 'Jet'

local engine = Instance.new("Part",jet)
engine.FormFactor ='Custom'
engine.Size = Vector3.new(2,0.5,5)
engine.BrickColor = BrickColor.Red()
engine.Name = 'Engine'

local Bullet=Instance.new("Part")
Bullet.Size=Vector3.new(1,1,1)
Bullet.Shape='Ball'
Bullet.BrickColor = BrickColor.Yellow()


local Missile = Instance.new("Part")
Missile.Size=Vector3.new(1,1,2)
Missile.BrickColor=BrickColor.Black()

local wings = engine:clone()
wings.Name = 'Wing'

wings.Anchored = true
engine.Anchored = true

local set = function()

  coroutine.wrap(function()
    wings.Parent = engine
    wings.CFrame = engine.CFrame*CFrame.Angles(0,math.rad(90),0)
  end)()
  
end

coroutine.wrap(function()
while wait() do set() end
end)()

local cf = CFrame.new(0,30,0)


move = function(o)
if o==engine then
  cf=cf*CFrame.new(0,0,-1)

else
o.CFrame=o.CFrame*CFrame.new(0,0,-1)
end
end

rot = function(ang)
if ang==1 then
cf=cf*CFrame.Angles(0,math.rad(ang==1 and 5 or -5),0)
end
end

target = function(obj)
  if not obj then return end
cf = CFrame.new(engine.Position,obj.Position)
end

curr=nil

gettarget=function()
  local canfireat={}
  for i,v in pairs(Workspace:children()) do
    if v:IsA'Model' and v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
      canfireat[#canfireat+1] = v.Torso
      end
  end
  
  local x=500
  local z = 500
  Next=nil
  for i,v in pairs(canfireat) do
    mag = Vector3.new((v.Position.X-engine.Position.X),0,(v.Position.Z-engine.Position.Z))
    if mag.X<0 then mag=Vector3.new(-mag.X,mag.Y,mag.Z)
      
  end
  if mag.Z<0 then mag=Vector3.new(mag.X,mag.Y,-mag.Z) end
    xx,zz = mag.X, mag.Z
    print(xx,zz,v.Parent.Name)
    if xx<x then
      x = xx
    end
    
     if zz<zz then
      z = zz
    end
    
    if xx==x then
      if zz==z then
        Next=v
        end
    end
    
  end
  
  if Next then
    return Next
    end
  end



Fire=function(Obj)
Obj.Anchored=true
Obj.Touched:connect(function(h) Obj:explode() Obj:Destroy() end)
coroutine.wrap(function()
while wait() do
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

while wait() do
move(engine)
engine.CFrame=cf
  if math.random(10,25)/10>1.5 then
rot(1)
else
rot(0)
  end

if curr == nil then

  if math.random(1,100)<50 then
curr=gettarget()
  end
else
target(curr)
if math.random(10,100)>40 then
fire(math.random(3)==1 and 'Bullet' or 'Missile')
end
end


end
