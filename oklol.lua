local plr=game.Players.LocalPlayer
local char=plr.Character
local m=plr:GetMouse()
local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end

local spd=15
local count=0

m.Button1Down:connect(function()
        count=count+1
        local curr=count
coroutine.wrap(function()
local block=Instance.new("Part",workspace)
block.Size=Vector3.new(5,5,5)
block.Shape='Ball'
block.BrickColor=BrickColor.Red()
block.Anchored=true
block.Touched:connect(function(h) 
        if h.Parent~=char then 
pcall(function() h.Parent.Humanoid:TakeDamage(10) game.Debris:AddItem(block,0.1) end)
        end 
end)
game.Debris:AddItem(block,15)
coroutine.wrap(function() wait(15) count=count-1 end)()
block.CFrame=char.Torso.CFrame*CFrame.new(0,0,-5)
while block do
wait(0)
CLerp(block,m.Hit*CFrame.Angles(0,math.rad(curr*10),0),spd/100)*CFrame.new(curr,curr,-curr)
end
end)()
end)
K={}
m.KeyDown:connect(function(k)
K[k]=true
end)
m.KeyUp:connect(function(k)
K[k]=false
end)
while wait(0) do
if K['q'] then spd=spd+1 elseif K['e'] then spd=spd-1 end
end
