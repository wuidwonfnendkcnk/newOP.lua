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
w.C0=w.C0*CFrame.new(0,3,0)

w2=Instance.new("Weld",char)
w2.Part0=zap
w2.Part1=zaptop
w2.C0 = CFrame.new(0,zap.Size.Y/2,0)

zap.Anchored,t.Anchored,zaptop.Anchored=false,false,false

local mod = Instance.new('Model',nc)
mod.Name = "Round"

create = function(Z)
local a = Instance.new("Part")
a.Name=tostring(#nc.Round:children()+1)
a.Parent=nc.Round
a.FormFactor='Custom'
a.Size=Vector3.new(1,zap.Size.Y,1)
a.BrickColor=zap.BrickColor
a.Material=zap.Material
a.Transparency=0.5
local w3 = Instance.new("Weld",zaptop)
w3.Part0 = zaptop
w3.Part1 = a
w3.Name=w3.Name..a.Name
print(Z)
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
wait(1)
a=1

  ow1=zaptop.Weld1.C0
  ow2=zaptop.Weld2.C0
  ow3=zaptop.Weld3.C0
  ow4=zaptop.Weld4.C0
for ii=1,10 do
  
for i=1,5 do
wait(0)
  zaptop.Weld1.C0=zaptop.Weld1.C0*CFrame.new(-1,0,0)

  zaptop.Weld2.C0=zaptop.Weld2.C0*CFrame.new(0,0,1)
  
  zaptop.Weld3.C0=zaptop.Weld3.C0*CFrame.new(1,0,0)
 
  zaptop.Weld4.C0=zaptop.Weld4.C0*CFrame.new(0,0,-1)
end

for i=1,4 do
  zaptop["Weld"..i].C0=zaptop['Weld'..i].C0*CFrame.Angles(0,math.rad(90),0)
end
if ii==2 or ii==4 or ii==6 or ii==8 or ii==10 then
  zaptop.Weld1.C0=ow1
  zaptop.Weld2.C0=ow2
  zaptop.Weld3.C0=ow3
  zaptop.Weld4.C0=ow4
  end
end

local bottom = zaptop:clone()
bottom.Parent=nc
bottom:breakJoints()
bottom.Name='Bottom'
bottom.Material=Workspace.Base.Material
bottom.BrickColor=Workspace.Base.BrickColor
bottom.FormFactor='Custom'
bottom.Size=bottom.Size-Vector3.new(0,(bottom.Size.Y),0)
bottom.Size=bottom.Size+Vector3.new(0,0.1,0)
bottom.Transparency=0
local WtC = Instance.new("Weld",zap)
WtC.Part0=zap
WtC.Part1=bottom
WtC.C0=CFrame.new(0,-(zap.Size.Y/2),0)


local bod = Instance.new("Model",nc)
bod.Name='Body'
weldz={}
for i=1,20 do
local new = Instance.new("Part",bod)
new.Parent=bod
local X,Z=bottom.Size.X,bottom.Size.Z
new.Size=Vector3.new(X,(X+Z)/2,Z)
local newWeld = Instance.new("Weld",bottom)
newWeld.Part0=newWeld.Parent
newWeld.Part1=new
newWeld.C0=CFrame.new(0,-((last).Size.Y)/2,0)
newWeld.C0=newWeld.C0*CFrame.new(0,-(new.Size.Y/3),0)
newWeld.C0=newWeld.C0*CFrame.new(0,-((i-1)*(new.Size.Y)),0)
r=function() return math.random(-200,150) end
weldz[#weldz+1]=newWeld
  last=new
  zaptop.CFrame=zaptop.CFrame*CFrame.new(0,-last.Size.Y,0)
  wait()
end

for i,v in pairs(weldz) do
  local newWeld=v
  newWeld.C1=newWeld.C1*CFrame.Angles(math.rad(r()),math.rad(r()),math.rad(r()))
  end
