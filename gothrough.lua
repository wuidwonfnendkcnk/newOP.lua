local detectRange=10
mod=Instance.new("Model",script.Parent)
invi=function(o,n)
ypcall(function() o.Transparency= o.Name=='HumanoidRootPart' and 1 or n end)
for i,v in pairs(o:children()) do
  pcall(function() invi(v) v.face.Transparency=n end)
  if v:IsA'BasePart' and (v.Name~='HumanoidRootPart' or n==1)then v.Transparency=n end
  if v:IsA'Hat' or v:IsA'Clothing' then
    v.Parent=n==1 and mod or script.Parent end
  end
end

local repeater=coroutine.wrap(function()
while wait(0) do
local block=Instance.new("Part",workspace)
block.Name='asd 000'
block.Transparency=1
block.Size=Vector3.new(detectRange/2,detectRange/4,detectRange)
block.CanCollide=false
block.Anchored=false
block.Touched:connect(function(h)
  if not (h.Parent==workspace or h.Parent.Parent==workspace or not h.Parent:IsA'Tool' or h.Parent.Name~=block.Name) then return end
local size=(h.Size.X+h.Size.Y+h.Size.Z)/3
size=size+detectRange+3
script.Parent.Torso.CFrame=script.Parent.Torso.CFrame*CFrame.new(0,0,-size)
end)
for i=1,detectRange,2 do
wait(0)
block.CFrame=script.Parent.Torso.CFrame*CFrame.new(0,0,-i)
end
end
end)
repeater()
