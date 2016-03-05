local arm=Instance.new("Part",script.Parent)
arm.Size=Vector3.new(2,2,4)
arm.Anchored=true
Difference=CFrame.new(0,0,0)
local torso=script.Parent.Torso
local plr=game.Players.LocalPlayer
m=plr:GetMouse()
coroutine.wrap(function()
while wait(0) do
arm.CFrame=torso.CFrame*CFrame.new(-4,0,-1)
arm.CFrame=arm.CFrame*Difference
end
end)()

local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end

while wait(0) do
local p=Instance.new("Part",workspace)
p.Transparency=1
p.Anchored=true
p.CanCollide=false
CLerp(p,m.Hit.p,0.2)
Difference=p.CFrame
game.Debris:AddItem(p,0.1)
end
