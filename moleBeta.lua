local Attachblock=Instance.new("Part",script.Parent)
Attachblock.Size=Vector3.new(1,1,1)
Attachblock.Anchored=true
Attachblock.CanCollide=false
Attachblock.Transparency=0.5
local char=script.Parent
local plr=game.Players.LocalPlayer
local m=plr:GetMouse()

mole=false
digging=false
odear=false
m.Button1Down:connect(function()
mole=not mole
end)
turn=false
asd,dir=0,math.rad(0)
m.KeyDown:connect(function(k)
 if k=='w' then
  asd=1
 elseif k=='s' then
  turn=true
  
 elseif k=='a' then
  turn2=true
  dir=math.rad(5)
 elseif k=='d' then
  turn2=true
  dir=math.rad(-5)
  end
end)
m.KeyUp:connect(function(k)
 if k=='w' then 
  asd=0 
 elseif k=='s' then
  turn=false
  elseif k=='a' or k=='d' then turn2=false
 end 
 end)
ang=math.rad(0)
while wait() do
 coroutine.wrap(function()
  if turn then
   repeat dir=math.rad(10) wait(0) until turn==false
   end
  end)()
 if mole then
    if not digging then
      
      digging=true
      
      char.Humanoid.PlatformStand=true
      char.Torso.Anchored=true
      char.Humanoid.Jump=true
      cf=char.Torso.CFrame
      local cf2=cf
        for i=0,-135,-10 do
    cf2=cf*CFrame.Angles(math.rad(i),0,0)*CFrame.new(0,0,-i/30)
  end
for i=1,10 do
cf2=cf2*CFrame.new(0,1,0)
end

  for i=0,-135,-10 do
    Attachblock.CFrame=cf*CFrame.Angles(math.rad(i),0,0)*CFrame.new(0,0,-i/30)
    char.Torso.CFrame=Attachblock.CFrame
    wait(0)
  end
  local hole=Instance.new("Part",workspace.Base)
  Instance.new("CylinderMesh",hole)
  hole.FormFactor='Custom'
  hole.Size=Vector3.new(4,0.1,4)
      hole.BrickColor=BrickColor.Black()
      hole.Anchored=true
  hole.CFrame=CFrame.new(cf2.X,0.5,cf2.Z)
  local np=Instance.new("Part",Attachblock)
  np.Anchored=true
  np.Transparency=1
  np.CFrame=hole.CFrame*CFrame.new(0,-10,-10)
for i=1,20 do
Attachblock.CFrame=Attachblock.CFrame*CFrame.new(0,1,0)
char.Torso.CFrame=Attachblock.CFrame
wait(0)
end
for i=35,0,-5 do
 Attachblock.CFrame=Attachblock.CFrame*CFrame.Angles(math.rad(5),0,0)
 char.Torso.CFrame=Attachblock.CFrame
 wait(0)
end
odear=true
end

if odear then
 if turn2 or turn then
 Attachblock.CFrame=Attachblock.CFrame*CFrame.Angles(0,0,dir or 0)
end
if asd~=0 then
ang=ang+1
if ang<10 then
 np.CFrame=np.CFrame*CFrame.new(0,1,0)
elseif ang<20 then
 np.CFrame=np.CFrame*CFrame.new(0,-1,0)
 else ang=0
end
np.CFrame=np.CFrame*CFrame.Angles(0,dir,0)
np.CFrame=np.CFrame*CFrame.new(0,0,-1)
Attachblock.CFrame=CFrame.new(Attachblock.Position,np.CFrame)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0,0,-1)
char.Torso.CFrame=Attachblock.CFrame
end

  char.Torso.CFrame=Attachblock.CFrame
 end
end
end
