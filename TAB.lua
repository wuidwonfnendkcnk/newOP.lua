T={Speed = (NumberRange.new(5,5)) ,
Lifetime = (NumberRange.new(5,10))
}
Color = ColorSequence.new(Color3.new(49,180,236),Color3.new(0,0,0))


Transparency = 0.9
Texture = 'rbxasset://textures/particles/sparkles_main.dds'
Rate = 20
  Size = NumberRange.new(0, 10, 0, 1, 10, 0 )

local emit = Instance.new("ParticleEmitter")
for i,v in pairs(getfenv()) do
pcall(function() emit[i]=v end)
end

for i,v in pairs(T) do
emit[i]=T[i]
end

emit.Color=Color
emit.Acceleration=Vector3.new(0,1,0)

emit.Parent=Instance.new("Part",Workspace)

