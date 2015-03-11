local createBoom=function(Par)
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
return Boom
end
local la=script.Parent['Left Arm']
local b1=createBoom(la)
local w=Instance.new("Weld",b1)
w.Part0=la
w.Part1=w.Parent
