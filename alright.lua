plr=game.Players.LocalPlayer
char=workspace:WaitForChild(plr.Name)
T=char:WaitForChild'Torso'
div={}
local Debris={
AddItem=function(self,obj,Timee)
	local WaitA=coroutine.wrap(function()
		local ok=0
for i=0,Timee,Timee/10 do
	ok=ok+1
obj.Transparency=ok/10
wait(Timee/10)
if i>((Timee-((Timee/10)*9))) then
obj.Anchored=false
obj:breakJoints()
end
end
obj:Destroy()
	end)
	WaitA()
end
}
for i=0,360*3,54 do
div[i]=true
end
local CFramee=CFrame.new(0,0,0)
on=false
m=plr:GetMouse()
asd=0
m.KeyDown:connect(function(KEY)
if KEY~='x' then return end
	on=true
	asd=0
	--while wait(0) and on do
Selected=m.Hit
--end
print'asd'
end)
m.KeyUp:connect(function()
Selected=nil
on=false
print'up'
end)
while wait(0.18) do
	local oo=0
	asd=0
for i=0,360*3,27 do
	oo=oo+0.5
	asd=asd+27
	if not on then asd=i end
	local p=Instance.new("Part",char)
p.Size=Vector3.new(10,10,10)
local Me=Instance.new("SpecialMesh",p)
Me.MeshType='Sphere'
Me.Scale=Vector3.new(0.33333,0.33333,0.33333)
p.Anchored=true
p.CanCollide=false
p.BrickColor=BrickColor.new('Really red')
p.Shape='Ball'
	if Selected~=nil then
	CFramee=CFrame.new(T.CFrame.p,Selected.p)
p.CFrame=CFramee
*CFrame.Angles(math.rad(-75),math.rad(i),0)
*CFrame.new(0,(asd/36)+(oo/2),-10)
	 else 
		CFramee =  T.CFrame
p.CFrame=CFramee
*CFrame.Angles(0,math.rad(asd),0)
*CFrame.new(0,i/36,-10)
		end
Debris:AddItem(p,0.75)
p.Touched:connect(function(h)
if h.Parent~=char and h.Parent:findFirstChild'Humanoid' then
local hum=h.Parent.Humanoid
local dmg=hum.MaxHealth/50
hum.Health=hum.Health-dmg
end
end)
if div[i] then
wait(0)
end
end
end

