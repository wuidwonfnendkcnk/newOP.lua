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
cl.CanCollide=false
cl:breakJoints()
cl.Touched:connect(function(h)
        if h.Parent==script.Parent then return end
        pcall(function() h.Parent.Humanoid:takeDamage(20) end)
        script.Parent.Humanoid.Health=last or 100
        last=script.Parent.Humanoid.Health
        end)
coroutine.wrap(function()
        repeat wait(0)
cl.CFrame=cl.CFrame*CFrame.new(0,0,-2)
local clo=cl:clone()
clo.Transparency=1
clo.Anchored=false
clo.CanCollide=false
clo.Parent=cl
game.Debris:AddItem(clo,0.1)
clo.Touched:connect(function(h)
        if h.Parent==script.Parent then return end
        pcall(function() h.Parent.Humanoid:takeDamage(20) end)
        script.Parent.Humanoid.Health=last or 100
        last=script.Parent.Humanoid.Health
        end)
clo.CFrame=cl.CFrame*CFrame.new(0,1,0)
until (cl.CFrame.Z>ep.Z-2 and cl.CFrame.Z<ep.Z+2) or cl.CFrame.Z==ep.Z
wait(0)
cl.CFrame=cl.CFrame*CFrame.new(0,0,-0.5)
wait(0)
cl.CFrame=cl.CFrame*CFrame.new(0,0,-0.5)
wait(0)
cl.CFrame=cl.CFrame*CFrame.new(0,0,-0.5)
end)()
game.Debris:AddItem(cl,((sp.p-ep.p).magnitude)/18)
wait(0.5)
db=false
spear.Transparency=0
end)
