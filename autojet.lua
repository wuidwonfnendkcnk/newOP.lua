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
Bullet.Name='Bullet'

local Missile = Instance.new("Part")
Missile.Size=Vector3.new(1,1,2)
Missile.BrickColor=BrickColor.Black()
Missile.Name='Missile'

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
  cf=cf*CFrame.new(0,0,-2)

else
o.CFrame=o.CFrame*CFrame.new(0,0,-3)
end
end

rot = function(ang)

cf=cf*CFrame.Angles(0,math.rad(ang==1 and 5 or -5),0)

end

target = function(obj)
  if not obj then return end
cf = CFrame.new(engine.Position,obj.Position)*CFrame.new(0,2,0)
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
  
  local x=500
  local z = 500
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



Fire=function(Obj)
Obj.Anchored=true
game.Debris:AddItem(Obj,7)
Obj.Touched:connect(function(h) Obj:explode() game.Debris:AddItem(Obj,0.2) if h==curr then curr=nil AIM=false for i=1,20 do rot(1) wait(0) end end end)
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

while wait() do
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

  if (function() a= math.random(1,1000) return a<400 and a>200 end) then
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
