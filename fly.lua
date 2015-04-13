local active = 0

local m=game.Players.LocalPlayer:GetMouse()
local char=script.Parent
local part=Instance.new("Part",char)
part.Anchored=true
part.Size=Vector3.new(5,1,5)
local dif=part.CFrame

m.Button1Down:connect(function()
active=active==0 and 1 or 0
end)

while wait() do
if active==1 then
dif=dif*CFrame.new(0,0,-1)
end
part.CFrame = dif
char.Torso.Anchored=true
char.Torso.CFrame=part.CFrame*CFrame.new(0,10,0)*CFrame.Angles(0,0,math.rad(-90))*CFrame.Angles(math.rad(-90),math.rad(-90),0)
end
