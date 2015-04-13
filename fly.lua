local active = 0

local m=game.Players.LocalPlayer:GetMouse()

local part=Instance.new("Part",script.Parent)
part.Anchored=true
part.Size=Vector3.new(5,1,5)
local dif=part.CFrame
local w=Instance.new("Weld",part)
w.Part0=script.Parent.Torso
w.Part1=w.Parent
m.Button1Down:connect(function()
active=active==0 and 1 or 0
end)

while wait() do
if active==1 then
--dif=dif*CFrame.new(0,0,-1)
end
part.CFrame = dif
w.C0=part.CFrame*CFrame.new(0,20,0)*CFrame.Angles(math.rad(90),0,math.rad(90))
end
