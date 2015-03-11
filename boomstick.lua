local createBoom=function(Par,C0)
local Boom=Instance.new("Part")
Boom.FormFactor='Custom'
Boom.Size=Vector3.new(1,1,2.5)
local n2=Boom:clone()
n2.BrickColor=BrickColor.Black()
n2.Size=Boom.Size-Vector3.new(0.2,0.2,-0.2)
n2.Parent=Boom
Boom.Parent=Par
local w=Instance.new("Weld",Boom)
w.Part1=Boom
w.Part0=n2
local w=Instance.new("Weld",Boom)
w.Part0=Par
w.Part1=w.Parent
w.C0=C0
return Boom
end


local la=script.Parent['Left Arm']
local b1=createBoom(la,CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(90),0,0))
local b2=createBoom(la,CFrame.new(0.3,-1,0)*CFrame.Angles(math.rad(90),0,0))

