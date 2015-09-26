local p = game.Players.LocalPlayer

local char = p.Character

local nc = Instance.new("Model",char)

local t = char.Torso

for i=10,1,-1 do
game.Lighting.TimeOfDay=i
wait(0.1)
end


t.Anchored=true

nc.Name='NewChar'

local zap = Instance.new("Part",char.NewChar)

zap.Size=Vector3.new(5,1,5)

zap.BrickColor=BrickColor.new'Really red'

zap.Material = 'Corroded Metal'

zap.CanCollide=false

zap.Anchored=true

zap.CFrame=t.CFrame*CFrame.new(0,-2.5,0)

cf=zap.CFrame
for i=1,30 do
zap.Size=Vector3.new(5,i*2,5)
zap.CFrame=cf*CFrame.new(0,i*2,0)
wait()
end
