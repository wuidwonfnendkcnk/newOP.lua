local Attachblock=Instance.new("Part",script.Parent)
Attachblock.Size=Vector3.new(1,1,1)
Attachblock.Anchored=true
Attachblock.CanCollide=false
Attachblock.Transparency=0.5
local char=script.Parent
local plr=game.Players.LocalPlayer
local m=plr:GetMouse()

mole=false
digging=false
m.Button1Down:connect(function()
mole=not mole
end)

while wait() do
if mole then
if not digging then
local hole=Instance.new("Part",workspace.Base)
digging=true
hole.Size=Vector3.new(3,1,3)
hole.BrickColor=BrickColor.Black()
hole.Anchored=true
char.Humanoid.PlatformStand=true
hole.CFrame=CFrame.new(char.Torso.CFrame.X,0.5,char.Torso.CFrame.Z)
char.Torso.Anchored=true
char.Humanoid.Jump=true
cf=char.Torso.CFrame
for i=0,-180,-15 do
Attachblock.CFrame=cf*CFrame.Angles(math.rad(i),0,0)*CFrame.new(0,0,-i/20)
char.Torso.CFrame=Attachblock.CFrame
wait(0)
end

end
end
end
