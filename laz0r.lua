local plr=game.Players.LocalPlayer
local active=true
local mouse=plr:GetMouse()
plr.Chatted:connect(function(m) if m:match'activ' then active=true elseif m:match'inacti' then active=false end end)

mouse.Button1Down:connect(function()
if not active then return end
plr.Character.Torso.Anchored=true
local part=Instance.new("Part",plr.Character)
part.Size=Vector3.new(10,10,1)
part.Anchored=true
part.Transparency=0.3
part.CFrame=plr.Character.Torso.CFrame*CFrame.new(0,0,-5)
local p=mouse.Hit.p
local start=plr.Character.Torso.CFrame*CFrame.new(0,0,-5)
local CF=CFrame.new(start.p,p)
local dist=(start.p-p).magnitude
if dist>400 then dist=400 end
local raypart=Instance.new("Part",plr.Character)
raypart.Size=Vector3.new(2,2,dist)
raypart.Anchored=true
raypart.CFrame=CF*CFrame.new(0,0,-dist/2)
raypart.BrickColor=part.BrickColor
coroutine.wrap(function()
for i=1,360,(360/15) do
wait(0)
part.CFrame=part.CFrame*CFrame.Angles(0,0,math.rad(i))
part.BrickColor=BrickColor.Random()
raypart.BrickColor=part.BrickColor
for i=1,dist,30 do
local ex=Instance.new("Explosion",workspace)
CF=raypart.CFrame*CFrame.new(0,0,dist/2)*CFrame.new(0,0,-(i+5))*CFrame.new(0,0,-5)
ex.Position = (cf).p
end
end
wait()
game.Debris:AddItem(part,0.1)
game.Debris:AddItem(raypart,0.2)
plr.Character.Torso.Anchored=false
end)()
end)
