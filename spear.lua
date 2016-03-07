local spear=Instance.new("Part",script.Parent)
spear.FormFactor='Custom'
spear.Size=Vector3.new(0.1,0.1,3.35)
spear.Anchored=true
spear.BrickColor=BrickColor.new'Dirt brown'
local w=coroutine.wrap(function()
game:service'RunService'.Stepped:connect(function()
spear.CFrame=char.Torso.CFrame*CFrame.new(0,0,0.51)*CFrame.Angles(math.rad(90),0,math.rad(25))
end)
end)
w()
plr=game.Players.LocalPlayer
char=plr.Character
m=plr:GetMouse()
db=false
m.Button1Down:connect(function()
if db then return end
db=true
spear.Transparency=1
local sp=CFrame.new(char.Torso.CFrame.p,m.Hit.p)
ep=m.Hit
local cl=spear:clone()
cl.CFrame=sp
cl.Transparency=0
cl.Parent=char
coroutine.wrap(function()
        repeat wait()
cl.CFrame=cl.CFrame*CFrame.new(0,0,-1)
until (cl.CFrame.Z>ep.Z-1 and cl.CFrame.Z<ep.Z+1) or cl.CFrame.Z==ep.Z
end)()
wait(0.1)
db=false
spear.Transparency=0
end)
