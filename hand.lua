local plr=game.Players.LocalPlayer
local char=plr.Character
local m=plr:GetMouse()
local ra=char['Right Arm']
local dist=0
local spray=function()
local destroy=Instance.new("Part",workspace.Terrain)
destroy.Size=Vector3.new(1,1,2)
destroy.Anchored=true
destroy.Name=dist
destroy.CFrame=CFrame.new(char.Torso.CFrame.p,m.Hit.p)*CFrame.new(-1,0,-(2+dist))
return destroy
end

m.Button1Down:connect(function() rip=true end)

while wait(0) do
if rip then
dist=dist+1 local dmg=spray() dmg.Touched:connect(function(h) 
if h.Parent:findFirstChild'Humanoid' then h.Parent.Humanoid.Health=h.Parent.Humanoid.Health-5 end
else
pcall(function() workspace.Terrain[dist]:Destroy() end)
dist=dist-1
end
end
