local plr=game.Players.LocalPlayer
local char=plr.Character
local cam=workspace.CurrentCamera
local area=char.Torso.CFrame
char:Destroy()

local block=Instance.new("Part",workspace.Base)
local ln=area
block.Size=Vector3.new(2,2,2)
block.CFrame=ln
local cl=block:clone()
local bb=workspace.Base:clone()

local resp=function()
if ln then
  if not workspace:findFirstChild'Base' then bb:clone().Parent=workspace end
    block=cl:clone()
    block.Parent=workspace.Base
    block.CFrame=ln
    cl=block:clone()
  end
end


coroutine.wrap(function()
while wait(0) do
if not block or not block.Parent or block.Parent==nil or not workspace:findFirstChild'Base' then
resp()
end
if block then
cl=block:clone()
if block.Parent~=nil then
ln=block.CFrame
end
end
end
end)
