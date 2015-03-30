local b=Workspace.Base

fly=function(o)
o.CFrame=o.CFrame*CFrame.new(0,1,0)
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
for i,vv in pairs(v:children()) do
pcall(function() fly(vv) end)
end
end
end

end
