local plr=game.Players.LocalPlayer
local char=plr.Character
local m=plr:GetMouse()
local ra=char['Right Arm']
local dist=2


local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end



local spray=function()
local destroy=Instance.new("Part",workspace)
destroy.Size=Vector3.new(1,1,2)
destroy.Anchored=true
local dist2=dist
destroy.Name=dist
wait(0)
destroy.CFrame=char.Torso.CFrame
coroutine.wrap(function()
repeat wait(0) CLerp(destroy,CFrame.new(m.Hit.p,char.Torso.CFrame.p)*CFrame.new(0,0,dist2),0.5) until not destroy
end)()
return destroy
end

m.Button1Down:connect(function() rip=true end)

while wait(0) do
    if rip then
    if dist>=50 then rip=false end
      dist=dist+1 local dmg=spray() 
wait(0)
        dmg.Touched:connect(function(h) 
          if h.Parent:findFirstChild'Humanoid' then h.Parent.Humanoid.Health=h.Parent.Humanoid.Health-5 end
        end)

      else
        pcall(function() workspace.Terrain[dist]:Destroy() end)
        dist=dist-1
    end
    
end
