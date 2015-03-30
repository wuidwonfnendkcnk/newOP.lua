local b=Workspace.Base

fly=function(o)
  if o.CFrame.Y-Workspace.Base.Y<100 then
    o.CFrame=o.CFrame*CFrame.new(0,102,0)
    end
o.CFrame=o.CFrame*CFrame.new(0,1,0)
end

local owat=0

while wait(0) do
owat=owat+1
Workspace.Base.CFrame=Workspace.Base.CFrame*CFrame.new(0,1,0)
if owat>200 then
owat=0
wait(1)
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
