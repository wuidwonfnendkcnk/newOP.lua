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

zap.Transparency=0.5

cf=zap.CFrame
for i=1,30,2 do
zap.Size=Vector3.new(5,i*2,5)
zap.CFrame=cf*CFrame.new(0,i,0)
wait(0)
end


local zaptop = Instance.new("Part",nc)
zaptop.FormFactor='Custom'
zaptop.Size=Vector3.new(5,0.5,5)
zaptop.Anchored=true
cf=zap.CFrame*CFrame.new(0,zap.Size.Y/2,0)
zaptop.CFrame=cf
zaptop.Material=zap.Material
zaptop.BrickColor=zap.BrickColor
zaptop.Transparency=zap.Transparency
for i=1,20 do
  zaptop.Size=zaptop.Size+Vector3.new(0.25,0.1,0.25)
  zaptop.CFrame=cf
  wait(0)
  end

local w= Instance.new("Weld",char)
w.Part0=zap
w.Part1=t
w.C0=CFrame.new(0,-(zap.Size.Y/2),0)
