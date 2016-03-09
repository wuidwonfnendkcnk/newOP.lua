local sp=function(s,cf,tt)
if math.random(1,5)==math.random(1,5) then
game.Lighting.TimeOfDay=tostring(math.random(10,120)/10)..":00:00"
end
local part=Instance.new("Part",workspace)
part.BrickColor=BrickColor.Red()
part.Size=s
part.Transparency=0.5
part.CFrame=cf
part.Anchored=false
part.CanCollide=false
part:breakJoints()
part.CFrame=cf
part:breakJoints()
part.Anchored=false
coroutine.wrap(function()
  repeat wait()
    x=math.random(0,1)
    y=math.random(0,1)
    z=math.random(0,1)
    part.Transparency=part.Transparency+0.05
    r=function() return math.random(-10,10) end
    part.CFrame=part.CFrame*CFrame.Angles(z*r(),y*r(),z*r())
    until part.Parent~=workspace
  end)()
game.Debris:AddItem(part,tt)
end

p=game.Players.LocalPlayer
c=p.Character
for asd=0,50,10 do
wait(0)
  for i=0,360,64 do
sp(Vector3.new(10,10,10),c.Torso.CFrame*CFrame.Angles(0,math.rad(i),0)*CFrame.Angles(math.rad(asd),0,math.rad(45))*CFrame.new(0,asd,-(asd))*CFrame.new(0,0,-5),5)
  end
end
