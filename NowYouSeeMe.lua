local char=script.Parent

local m=game.Players.LocalPlayer:GetMouse()


tp=function(SP,EP)

local mainray=Instance.new("Part",char)
local dir=CFrame.new(SP.p,EP.p)
local len=(SP.p-EP.p).magnitude
local s1=len/2
mainray.FormFactor='Custom'
mainray.Size=Vector3.new(1,1,len)
mainray.CFrame=dir*CFrame.new(0,0,-(len/2))
mainray.CanCollide=false
mainray.Anchored=true
mainray.Transparency=1
local ray1=mainray:clone()
ray1.Size=Vector3.new(0.1,0.1,s1)
ray1.CFrame=dir*CFrame.Angles(math.rad(25),0,0)*CFrame.new(0,0,-(len/4))
ray1.Parent=char
ray2=ray1:clone()
ray2.Parent=char
ray2.CFrame=ray2.CFrame*CFrame.new(0,0,-(len/4))*CFrame.Angles(math.rad(-50),0,0)*CFrame.new(0,0,-(len/4))
local start = ray1.CFrame*CFrame.new(0,0,s1/2)
local int=ray1.Size.Z/20
for i=1,ray1.Size.Z,int do
  wait()
 -- print(i)
  local p=Instance.new("Part",char)
  p.Size=Vector3.new(5,5,5)
  p.Anchored=true
  p.CanCollide=false
  p.Transparency=0.5
  game.Debris:AddItem(p,0.5)
  start=start*CFrame.new(0,0,-int)
  char.Torso.CFrame=start
  p.CFrame=start*CFrame.Angles(0,math.rad(math.random(-90,90)),math.rad(math.random(-100,100)))
    p.BrickColor=BrickColor.Random()

  end
  
  wait(0)
  
  local start = ray2.CFrame*CFrame.new(0,0,s1/2)
local int=ray2.Size.Z/20
for i=1,ray2.Size.Z-5,int do
  wait()
 -- print(i)
  local p=Instance.new("Part",char)
  p.Size=Vector3.new(5,5,5)
  p.Anchored=true
  p.CanCollide=false
  p.Transparency=0.5
  game.Debris:AddItem(p,0.5)
  start=start*CFrame.new(0,0,-int)
  char.Torso.CFrame=start
  p.CFrame=start*CFrame.Angles(0,math.rad(math.random(-90,90)),math.rad(math.random(-100,100)))
    p.BrickColor=BrickColor.Random()
    
  end
end

local TPING=false

m.Button1Down:connect(function()
  if TPING then return end
  TPING=true
tp(char.Torso.CFrame,m.Hit)
wait(2)
TPING=false
end)
