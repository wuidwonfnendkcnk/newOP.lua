local spear=Instance.new("Part",script.Parent)
spear.FormFactor='Custom'
spear.Size=Vector3.new(0.1,0.1,3.35)
spear.Anchored=true
spear.BrickColor=BrickColor.new'Dirt brown'
local w=coroutine.wrap(function()
game:service'RunService'.Stepped:connect(function()
spear.CFrame=char.Torso.CFrame*CFrame.new(0,0,0.51)*CFrame.Angles(math.rad(90),math.rad(30),math.rad(0))
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
local sp=CFrame.new((char['Right Arm'].CFrame*CFrame.new(0,0,-2)).p,m.Hit.p)
ep=m.Hit
local cl=spear:clone()
cl.CFrame=sp
cl.Transparency=0
cl.Parent=char
cl.Touched:connect(function(h)
        pcall(function() h.Parent.Humanoid:takeDamage(20) end)
        end)
coroutine.wrap(function()
        repeat wait(0)
cl.CFrame=cl.CFrame*CFrame.new(0,0,-1)
until (cl.CFrame.Z>ep.Z-1 and cl.CFrame.Z<ep.Z+1) or cl.CFrame.Z==ep.Z
end)()
game.Debris:AddItem(cl,((sp.p-ep.p).magnitude)/18)
wait(0.5)
db=false
spear.Transparency=0
end)
