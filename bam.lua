local plr=game.Players.LocalPlayer
local char=plr.Character or plr.CharacterAdded:wait()
local t=char:WaitForChild'Torso'
local m=plr:GetMouse()
local atk=false
m.Button1Down:connect(function()
if atk then return end
atk=true
for i=1,15 do
	char.Humanoid.Jump=true
wait()
t.Velocity=Vector3.new(0,500,0)

end
for i=1,3 do
wait(0)
t.Velocity=Vector3.new(0,-100,0)
t.Anchored=true
end
local sq=Instance.new("Part",workspace)
sq.Size=Vector3.new(25,1,25)
sq.Anchored=true
sq.CFrame=t.CFrame
sq.Transparency=1
sq.CanCollide=false
for i=1,36,2 do
	local spot=i
local p=Instance.new("Part",workspace)
p.Size=Vector3.new(1,1,3)
p.BrickColor=BrickColor.New'Toothpaste'
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
wait(0)
p:breakJoints()
local Y=t.CFrame.Y
local CFF=p.CFrame
local stopper=Instance.new("Part",workspace)
stopper.Size=Vector3.new(25,5,25)
stopper.Transparency=1
stopper.Position=(p.CFrame*CFrame.new(0,Y,0).p
stopper.Touched:connect(function(h)
h.Anchored=true
game.Debris:AddItem(stopper,0.1)
end)
for i=1,Y-5,3 do
wait(0)
p.CFrame=CFF*CFrame.new(0,0,i)
sq.CFrame=t.CFrame*CFrame.new(0,-i,0)
sq.Transparency=1
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
Instance.new("Explosion",workspace).Position=sq.Position
game.Debris:AddItem(sq,0.1)
p:Destroy()
t.Anchored=false
end
end)

end)()
end

end)
