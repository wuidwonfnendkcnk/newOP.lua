local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end




local spear=Instance.new("Part",script.Parent)
spear.FormFactor='Custom'
spear.Size=Vector3.new(0.1,3,0.1)
spear.Anchored=true
spear.BrickColor=BrickColor.new'Dirt brown'
local w=coroutine.wrap(function()
game:service'RunService'.Stepped:connect(function()
spear.CFrame=char.Torso.CFrame*CFrame.new(0,0,0.51)*CFrame.Angles(0,0,math.rad(25))
end)
end)
w()
plr=game.Players.LocalPlayer
char=plr.Character
m=plr:GetMouse()
db=false
m.Button1Down:connect(function()
if db then return end
db=true
spear.Transparency=1
local sp=CFrame.new((char.Torso.CFrame*CFrame.new(0,0,-2)).p,(m.Hit*CFrame.Angles(math.rad(90),0,0)).p)
repeat ep=sp*CFrame.new(0,0,-1) until ep.Z>sp.Z-1 and ep.Z<sp.Z+1
local cl=spear:clone()
cl.CFrame=sp
cl.Transparency=0
cl.Parent=char
coroutine.wrap(function()
        repeat wait()
cl.CFrame=cl.CFrame*CFrame.new(0,1,0)
until (cl.CFrame.Z>ep.Z-1 and cl.CFrame.Z<ep.Z+1) or cl.CFrame.Z==ep.Z
end)()
wait(0.1)
db=false
end)
