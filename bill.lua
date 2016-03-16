local block=Instance.new("WedgePart",workspace)
block.FormFactor='Custom'
block.Size=Vector3.new(1,8.5,6)
local b2=block:clone()
b2.Parent=workspace
b2.CanCollide=false
b2.Anchored=true
local bill=Instance.new("Model",game.workspace.Terrain)
local eye=Instance.new("Part",block)
eye.FormFactor='Custom'
Instance.new("SpecialMesh",eye).MeshType='Sphere'
eye.FormFactor='Custom'
eye.Size=Vector3.new(1.15,4.25,3.75)
local socket=eye:clone()
socket.Parent=eye
socket.CanCollide,eye.CanCollide=false,false
socket.Size=Vector3.new(1.175,2.5,2.35)
eye.BrickColor=BrickColor.White()
socket.BrickColor=BrickColor.new'Really black'
local hat=Instance.new("Model",bill)
local part1=Instance.new("Part",hat)
part1.FormFactor='Custom'
part1.Size=Vector3.new(2,1.25,1.25)
part1.BrickColor=socket.BrickColor
part2=part1:clone()
part2.Parent=hat
part2.Size=part2.Size+Vector3.new(0,2,0)
part1.Anchored,part2.Anchored=true,true
game:service'RunService'.Stepped:connect(function()
b2.Anchored=true
b2.Parent,block.Parent=bill,bill
b2.CFrame=block.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,-6)
eye.Anchored=true
eye.Material='Neon'
socket.Material='Grass'
eye.CFrame=b2.CFrame*CFrame.new(0,0,3)
socket.Anchored=true
socket.CFrame=eye.CFrame
CLerp(part1,eye.CFrame*CFrame.new(0,5,0),0.25)
CLerp(part2,part2.CFrame*CFrame.new(0,1,0),0.25)
end)

wait(4)
block.Anchored=true
local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end

while wait(0) do block.BrickColor=BrickColor.new'New Yeller'
        b2.BrickColor=block.BrickColor
        b2.Material,block.Material='Neon','Neon'
        eye.Material='Neon'
        block.Anchored=true
        CLerp(block,CFrame.new(script.Parent.Torso.CFrame.p)*CFrame.new(0,10,-2),0.125) 

end
