local block=Instance.new("WedgePart",workspace)
block.Size=Vector3.new(1,10,8)
local b2=block:clone()
b2.Parent=workspace

local bill=Instance.new("Model",game.workspace.Terrain)
local eye=Instance.new("Part",bill)
eye.Size=Vector3.new(1,3.2,3.2)
eye.BrickColor=BrickColor.White()
game:service'RunService'.Stepped:connect(function()
b2.Anchored=true
b2.CFrame=block.CFrame*CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,-8)
eye.Anchored=true
eye.CFrame=b2.CFrame*CFrame.new(0,0,4)
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

while wait(0) do block.BrickColor=BrickColor.Yellow()
        b2.BrickColor=block.BrickColor
        b2.Material,block.Material='Neon','Neon'
        block.Anchored=true
        CLerp(block,CFrame.new(script.Parent.Torso.CFrame.p)*CFrame.new(0,10,-2),0.075) end
