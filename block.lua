local plr=game.Players.LocalPlayer
local char=plr.Character
local cam=workspace.CurrentCamera
local area=char.Torso.CFrame
char:Destroy()

local block=Instance.new("Part",workspace.Base)
local ln=area
block.Size=Vector3.new(2,2,2)
block.CFrame=ln
local jp=Instance.new("NumberValue",block)
jp.Name='JumpPower'
jp.Value=20
local cl=block:clone()
local bb=workspace.Base:clone()

local resp=function()
if ln then
  if not workspace:findFirstChild'Base' then bb:clone().Parent=workspace end
    block=cl:clone()
    block.Parent=workspace.Base
    block.CFrame=ln
    cl=block:clone()
    cam.CameraSubject=block
    block:BreakJoints()
    block.Parent.ChildRemoved:connect(function() 
  if c==block then
  resp() end end)
  end
end

block.Parent.ChildRemoved:connect(function() 
  if c==block then
  resp() end end)
coroutine.wrap(function()
  
    while wait(0) do
  


if block then
cl=block:clone() or cl
  if block.Parent~=nil then
ln=block.CFrame
  end
end

    end

end)()
cam.CameraSubject=block

local m=plr:GetMouse()
local down={}
m.KeyDown:connect(function(k)
  down[k:byte()]=true
end)
m.KeyUp:connect(function(k)
  down[k:byte()]=false
end)
jump=false
block:breakJoints()

while wait() do
  
  if down[32] then
    if not jump then
      jump=true
      
        wait(0)
      block.Velocity=Vector3.new(block.Velocity.X,block.JumpPower.Value*4,block.Velocity.Z)
    wait(1)
  
      block.Velocity=Vector3.new(block.Velocity.X,-block.JumpPower.Value*4,block.Velocity.Z)
      wait(0)
    
    jump=false
      end
  end
  if down[17] then
    block.Velocity=block.CFrame.lookVector*30
  end
  if down[18] then
    block.CFrame=CFrame.new(block.CFrame.p,workspace.CurrentCamera.CoordinateFrame)*CFrame.Angles(0,math.rad(180),0)
    block.Velocity=block.CFrame.lookVector*30
  end
  if down[20] then
    block.CFrame=CFrame.new(block.CFrame.p,workspace.CurrentCamera.CoordinateFrame)*CFrame.Angles(0,math.rad(-90),0)
    block.Velocity=block.CFrame.lookVector*30
  end
  if down[19] then
    block.CFrame=CFrame.new(block.CFrame.p,workspace.CurrentCamera.CoordinateFrame)*CFrame.Angles(0,math.rad(90),0)
    block.Velocity=block.CFrame.lookVector*30
    end
  
  end

