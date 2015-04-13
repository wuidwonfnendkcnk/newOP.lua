local active = 0

local m=game.Players.LocalPlayer:GetMouse()
local char=script.Parent
local part=Instance.new("Part",char)
part.Anchored=true
part.Size=Vector3.new(5,1,5)
local dif=part.CFrame
local fall=false
local FALL=function()
  char.Torso.CFrame=part.CFrame*CFrame.new(0,10,0)
  for i=10,3,-0.5 do
    if fall then
    wait(0)
    char.Torso.CFrame=part.CFrame*CFrame.new(0,i,0)*CFrame.Angles(0,math.rad(5),0)
    end
  end
  wait(0)
  
  for i=3,10,0.5 do
    wait(0)
    if fall then
    char.Torso.CFrame=part.CFrame*CFrame.new(0,i,0)*CFrame.Angles(0,math.rad(5),0)
    end
    end
  
end

spd=1
m.Button1Down:connect(function()
active=1
fall=false
new=false
end)
m.Button1Up:connect(function()
  new=true
  active=0
repeat wait() --[[print'']] until spd<2
fall=true
new=false
end)

while wait() do
  if new then
  dif=dif*CFrame.new(0,0,-(spd/7))
   -- print'slowing'
    char.Torso.CFrame=dif*CFrame.new(0,10,0)*CFrame.Angles(0,0,math.rad(-90))*CFrame.Angles(math.rad(-90),math.rad(-90),0)
  end
if active==1 then
  if spd>50 then spd=50 end
  spd=spd+1
  if fall then else
dif=dif*CFrame.new(0,0,-(spd/7))
dif=CFrame.new(dif.p,m.Hit.p)
  end

else
spd=spd-1
print(spd)
 if spd<0 then spd=0 end
end
part.CFrame = CFrame.new(dif.p)
char.Torso.Anchored=true
if active==1 then
char.Torso.CFrame=dif*CFrame.new(0,10,0)*CFrame.Angles(0,0,math.rad(-90))*CFrame.Angles(math.rad(-90),math.rad(-90),0)
else
  if not fall and not new then fall=true
  fall=false
end
end
if not new and active==0 then
  FALL()
  end
end
