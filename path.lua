local plr=game.Players.LocalPlayer
local mouse=plr:GetMouse()
local char=plr.Character

local C=0
local KK={}
coroutine.wrap(function()
while wait(0) do
local part=Instance.new("Part",char)
part.FormFactor='Custom'
part.Size=Vector3.new(2.5,0.1,2.5)
part.Color = Color3.new(C,0,0)
part.Anchored=true
part.CFrame = CFrame.new(char.Torso.Position)*CFrame.new(0,-3,0)
if KK['q'] then
char.HumanoidRootPart.CFrame=char.Torso.CFrame*CFrame.new(0,-0.2,0)
end
end
end)()

mouse.KeyDown:connect(function(K)
KK[K]=true
if KK['e'] then
C=C==0 and 1 or 0
end
end)

mouse.KeyUp:connect(function(K)
KK[K]=false
end)

