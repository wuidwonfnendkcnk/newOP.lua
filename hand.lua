local plr=game.Players.LocalPlayer
local char=plr.Character
local m=plr:GetMouse()
local ra=char['Right Arm']
local dist=2

local spray=function()
local destroy=Instance.new("Part",workspace)
destroy.Size=Vector3.new(1,1,2)
destroy.Anchored=true
destroy.Name=dist
wait(0)
destroy.CFrame=char.Torso.CFrame
wait(1)
destroy.CFrame=CFrame.new(destroy.Position,m.Hit.p)*CFrame.new(0,0,-dist)
if destroy.CFrame.Y<3 then repeat destroy.CFrame=destroy.CFrame*CFrame.new(0,0.1,0) until destroy.CFrame.Y>=2.5
else
    repeat
    destroy.CFrame=destroy.CFrame*CFrame.new(0,-0.1,0) until destroy.CFrame.Y<=2.5
    end
    --destroy.Parent=workspace.Terrain
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
