local detectRange=20
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
  go=false
while wait(0) do
local block=Instance.new("Part",workspace)
block.Name='asd 000'
block.Transparency=0.98
block.Size=Vector3.new(detectRange/2,detectRange/4,detectRange)
block.CanCollide=false
block.Anchored=false
coroutine.wrap(function()
  for i=1,detectRange,2 do
wait(0)
block.CFrame=script.Parent.Torso.CFrame*CFrame.new(0,0,-i)*CFrame.new(0,0,-block.Size.Z/2)*CFrame.new(0,0,-1)
end
block.Anchored=true
game.Debris:AddItem(block,0.001)
end)()
block.Touched:connect(function(h)
  if go then return end
  if h.Parent==workspace then
    if h.Name=='Base' or h.Name==block.Name then return end
  else
    if h.Parent.Parent==workspace then
      if h.Parent==script.Parent then return end
      if h.Parent:IsA'Hat' or h.Parent:IsA'Tool' then return end
      
    else
      return
      end
  end
  magn=((script.Parent.Torso.CFrame.p-h.Position).magnitude)
local size=(h.Size.X+h.Size.Y+h.Size.Z)/3
if magn>detectRange+size/2 then return end
  go=true

size=size+magn+3
script.Parent.Torso.CFrame=script.Parent.Torso.CFrame*CFrame.new(0,0,-size)
wait(0.5)
go=false
end)

end
end)
repeater()
