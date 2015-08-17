local no=function(o)
pcall(function()
o.Humanoid.Jump=false
v=o.Torso.Velocity
o.Torso.Velocity = Vector3.new(v.X,-100,v.Z)
end)
end

while wait() do
for i,v in pairs(workspace:children()) do
if v:findFirstChild'Humanoid' then
pcall(function() no(v) end)
end
end
end
