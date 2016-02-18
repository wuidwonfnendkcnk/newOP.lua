local plr=game.Players.LocalPlayer
local char=plr.Character
char.Archivable=true
local ghost=char:clone()
local m=plr:GetMouse()
local cam=workspace.CurrentCamera
local on=false
GetNear=function(o)
    local pos=o.Torso.Position
    for i,v in pairs(workspace:children()) do
        if v~=char and v:findFirstChild'Torso' and v:findFirstChild'Humanoid' then
            if (v.Torso.Position-pos).magnitude<10 then
                return v
            end
        end
    end
end
m.Button1Down:connect(function()
on = not on
if on then
Ghost=ghost:clone()
Ghost.Parent=cam
Ghost:makeJoints()
workspace.CurrentCamera.CameraSubject=Ghost.Humanoid
else
Ghost:Destroy()
end
end)

keys={}

m.KeyDown:connect(function(k)
keys[k]=true
end)

m.KeyUp:connect(function(k)
keys[k]=false
end)

while wait() do
    if on then
if keys['p'] then
local C=GetNear(Ghost)
if C then
C.Humanoid:TakeDamage(1)
Ghost.Parent=workspace
wait(0)
Ghost.Parent=workspace.CurrentCamera
end
end
char.Humanoid.WalkSpeed=0

if keys['w'] then
Ghost.Humanoid:MoveTo((Ghost.Torso.CFrame*CFrame.new(0,0,-3)).p,workspace.Base)
elseif keys['s'] then
Ghost.Humanoid:MoveTo((Ghost.Torso.CFrame*CFrame.new(0,0,3)).p,workspace.Base)
elseif keys['a'] then
Ghost.Humanoid:MoveTo((Ghost.Torso.CFrame*CFrame.new(-3,0,0)).p,workspace.Base)
elseif keys['d'] then
Ghost.Humanoid:MoveTo((Ghost.Torso.CFrame*CFrame.new(3,0,0)).p,workspace.Base)
end
else
char.Humanoid.WalkSpeed=16
cam.CameraSubject=char.Humanoid
    end
end
