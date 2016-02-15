local plr=game.Players.LocalPlayer
local char=plr.Character or plr.CharacterAdded:wait()
local t=char:WaitForChild'Torso'
local m=plr:GetMouse()
local atk=false
m.Button1Down:connect(function()
if atk then return end
atk=true
for i=1,20 do
	char.Humanoid.Jump=true
wait()
t.Velocity=Vector3.new(0,500,0)

end
for i=1,10 do
wait()
t.Velocity=Vector3.new(0,-100,0)
t.Anchored=true
end
for i=1,36,2 do
	local spot=i
local p=Instance.new("Part",workspace)
p.Size=Vector3.new(1,1,3)
p.CFrame=t.CFrame
p.CFrame=p.CFrame*CFrame.Angles(0,math.rad(i*10),0)*CFrame.new(0,0,-3)
coroutine.wrap(function()
for i=1,10 do
p.CFrame=p.CFrame*CFrame.new(0,0,-1.5)
p.Anchored=true
wait(0)
end
for Spot=spot,spot+108,2.5 do
	wait()
p.CFrame=t.CFrame*CFrame.Angles(0,math.rad(Spot*10),0)*CFrame.new(0,0,-(13))
end
for i=1,10 do
p.CFrame=p.CFrame*CFrame.Angles(math.rad(9),0,0)
wait()
end
wait(0.1)
p:breakJoints()
local Y=t.CFrame.Y
local CFF=p.CFrame
for i=3,Y-5 do
wait(0)
p.CFrame=CFF*CFrame.new(0,0,Y)
end
p.Anchored=false
local T=false
workspace.Base.Touched:connect(function(j)
if j==p and not T then
	p.Anchored=true
	T=true
	local cf=j.CFrame
for i=1,6 do
	wait(0)
	
	p.Size=p.Size+Vector3.new(0.5,0.5,3)
p.CFrame=cf
end
wait(0.5)
for i=1,6 do
wait(0)
p.Transparency=i/10
	p.Material='Neon'
	p.BrickColor=BrickColor.new('Really red')
p.Touched:connect(function(h)
h:breakJoints()
end)
p.CFrame=p.CFrame*CFrame.new(-1,1,0)
end

for i=6,12 do
wait(0)
p.Transparency=i/10
	p.Material='Neon'
	p.BrickColor=BrickColor.new('Really red')
p.Touched:connect(function(h)
h:breakJoints()
end)
p.CFrame=p.CFrame*CFrame.new(1,1,0)
end
p:Destroy()
t.Anchored=false
end
end)

end)()
end
end)
