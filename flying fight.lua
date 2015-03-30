local b=Workspace.Base

_G.fly=function(o)
  if not o:IsA'BasePart' then return end
if o.Name==b.Name then
  o.CFrame=o.CFrame*CFrame.new(0,2,0)
else
  for i=1,10 do
    coroutine.wrap(function() wait(0)
  o.Velocity=Vector3.new(o.Velocity.X,100,o.Velocity.Z)
end)()
  end
end
  end

local owat=0

while wait(0) do
owat=owat+1
if owat>200 then
owat=0
wait(1)
end
for i,v in pairs(Workspace:children()) do

pcall(function() fly(v) end)
local vv= v:findFirstChild'Torso'
pcall(function() fly(vv) end)

end

end
