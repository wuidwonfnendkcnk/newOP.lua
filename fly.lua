local active = 0

local m=game.Players.LocalPlayer:GetMouse()

local part=Instance.new("Part",script.Parent)
part.Anchored=true
part.Size=Vector3.new(5,1,5)
local dif=part.CFrame
local w=Instance.new("Weld",part)
w.Part0=w.Parent
w.Part1=script.Parent.Torso
m.Button1Down:connect(function()
active=active==0 and 1 or 0
end)

while wait() do
if active==1 then
dif=dif*CFrame.new(0,0,-1)
end
part.CFrame = dif
w.C0=part.CFrame*CFrame.new(0,10,0)*CFrame.Angles(0,0,math.rad(90))
end
