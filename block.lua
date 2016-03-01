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
jp.Value=30
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

while wait() do
  if down[32] then
    if not jump then
      jump=true
      for i=1,block.JumpPower.Value do
        print''
        wait(0)
      block.Velocity=block.Velocity+Vector3.new(0,10,0)
    end
    for i=1,block.JumpPower.Value do
      print'asd'
      block.Velocity=Vector3.new(0,-block.JumpPower.Value,0)
      wait(0)
    end
    jump=false
      end
    end
  end

