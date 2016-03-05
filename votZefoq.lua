local arm=Instance.new("Part",script.Parent)
arm.Size=Vector3.new(2,2,8)
arm.Anchored=true
Difference=CFrame.new(0,0,0)
local torso=script.Parent.Torso
local plr=game.Players.LocalPlayer
m=plr:GetMouse()

local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end


coroutine.wrap(function()
while wait(0) do
        CLerp(arm,CFrame.new((torso.CFrame*CFrame.new(10,0,-10)).p,m.Hit.p),0.2)
end
end)()
make=false
keys={}
m.KeyDown:connect(function(k)
        if k=='p' and not make then
        make=true
        block=Instance.new("Part",arm)
        block.Size=Vector3.new(1,1,1)
        block.Anchored=true
        while block and make do wait(0)
                block.CFrame=arm.CFrame*CFrame.new(0,0,-((block.Size.Z/2)+5))
                end
end
keys[k]=true
end)
m.KeyUp:connect(function(k)
        keys[k]=false
end)
Instance.new("Hint",plr.PlayerGui).Text='Q/E for X, Z/X for Y, T/Y for Z'
while wait() do
        if make then
                if keys['q'] then
                    block.Size=block.Size+Vector3.new(1,0,0)   
                    elseif keys['e'] then
                    block.Size=block.Size+Vector3.new(-1,0,0)
                    elseif keys['z'] then
                    block.Size=block.Size+Vector3.new(0,1,0) 
                    elseif keys['x'] then
                    block.Size=block.Size+Vector3.new(0,-1,0)
                    elseif keys['t'] then
                    block.Size=block.Size+Vector3.new(0,0,1)
                    elseif keys['y'] then
                    block.Size=block.Size+Vector3.new(0,0,-1)   
                end
        end
end
