T={Speed ={Min= 5,Max= 5} ,
Lifetime = {Min=5, Max= 10}
}
Color = {Start= Color3.new(49,180,236),End=Color3.new(0,0,0)}


Transparency = 0.9
Texture = 'rbxasset://textures/particles/sparkles_main.dds'
Rate = 20
Size = 10

local emit = Instance.new("ParticleEmitter")
for i,v in pairs(getfenv) do
pcall(function() emit[i]=v end)
end

for i,v in pairs(T) do
emit[i].Min=emit[i].Min
emit[i].Max=emit[i].Max
end

emit.Color.Start=Color.Start
emit.Color.End=Color.End
emit.Acceleration=Vector3.new(0,1,0)

emit.Parent=Instance.new("Part",Workspace)

