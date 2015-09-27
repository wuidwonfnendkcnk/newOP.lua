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
w.C0=w.C0*CFrame.new(0,-2,0)

w2=Instance.new("Weld",char)
w2.Part0=zap
w2.Part1=zaptop
w2.C0 = CFrame.new(0,zap.Size.Y/2,0)

--zap.Anchored,t.Anchored,zaptop.Anchored=false,false,false

local mod = Instance.new('Model',nc)
mod.Name = "Round"
create = function(Z)
local a = Instance.new("Part")
a.Name=tostring(#nc.Round:children()+1)
a.Parent=nc.Round
a.Size=Vector3.new(1,zap.Size.Y+2.5,1)
a.BrickColor=zap.BrickColor
a.Material=zap.Material
a.Transparency=0.5
local w3 = Instance.new("Weld",char)
w3.Part0 = zaptop
w3.Part1 = a
if Z=='z' then
w3.C0=CFrame.new(0,-(a.Size.Y/2),-(zaptop.Size.Z/2))
  elseif Z=='x' then
w3.C0=CFrame.new(-(zaptop.Size.X/2),-(a.Size.Y/2),0)
  elseif Z=='-z' then
w3.C0=CFrame.new(0,-(a.Size.Y/2),(zaptop.Size.Z/2))
    elseif Z=='-x' then
w3.C0=CFrame.new((zaptop.Size.X/2),-(a.Size.Y/2),0)
end

end

create'z'
create'x'
create'-z'
create'-x'
wait()
for i=1,5 do
  wait(1)
  mod['1'].CFrame=mod['1'].CFrame*CFrame.new(-1,0,0)
  mod['2'].CFrame=mod['2'].CFrame*CFrame.new(0,0,-1)
  mod['3'].CFrame=mod['3'].CFrame*CFrame.new(1,0,0)
  mod['4'].CFrame=mod['4'].CFrame*CFrame.new(0,0,1)
end
