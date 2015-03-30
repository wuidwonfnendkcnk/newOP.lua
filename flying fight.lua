local b=Workspace.Base

fly=function(o)
v.Velocity=Vector3.new(v.Velocity.X,100,v.Velocity.Z)
end

local owat=0

while wait(0) do
owat=owat+1
if owat>200 then
owat=0
wait(5)
end
for i,v in pairs(Workspace:children()) do
if v.Name~='Base' then
pcall(function() fly(v) end)
local vv= v:findFirstChild'Torso'
pcall(function() fly(vv) end)
pcall(function() v.Humanoid.Jump=true end)
end
end

end
