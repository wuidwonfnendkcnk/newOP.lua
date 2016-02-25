plr=game.Players.LocalPlayer
auto=off

keys={}
m=plr:GetMouse()
char=plr.Character

m.KeyDown:connect(function(k)
keys[k]=true
end)
m.KeyUp:connect(function(k)
keys[k]=false
end)
s1=false
s2=false
s3=false
s4=false
M=10

Shield1=Instance.new("Part")
Shield1.FormFactor='Custom'
Shield1.Shape='Cylinder'
Shield1.FormFactor='Custom'
Shield1.Size=Vector3.new(1,10,7.5)
Shield1.Anchored=true
Shield1.Transparency=0.8
Shield1.BrickColor=BrickColor.New'Teal'

Shield2=Shield1:clone()
Shield2.Size=Vector3.new(1,12,8)
Shield2.BrickColor=BrickColor.New'Really black'

Shield3=Shield1:clone()
Shield3.Size=Vector3.new(1.5,8,10)
Shield3.BrickColor=BrickColor.New'Really red'

Shield4=Shield2:clone()
Shield4.BrickColor=BrickColor.New'Lime green'

while wait(0) do
  if keys['t'] then
  
if not s1 then s1=true c1=0 shield1=Shield1:clone() shield1.Parent=workspace.Base end

shield1.CFrame=char.Torso.CFrame*CFrame.new(0,-(10)+c1,-5)*CFrame.Angles(math.rad(c1*9),0,math.rad(90))
c1=c1+1

if c1>=M then c1=M end

elseif not keys['t'] and s1 then
c1=c1-2
shield1.CFrame=char.Torso.CFrame*CFrame.new(0,(-10)+c1,-5)*CFrame.Angles(math.rad(c1*9),0,math.rad(90))

if c1<=0 then shield1:Destroy() s1=false end

end

if keys['h'] then
  
if not s2 then s2=true c2=0 shield2=Shield2:clone() shield2.Parent=workspace.Base end

shield2.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,-(10)+c2,-5)*CFrame.Angles(math.rad(c2*9),0,math.rad(90))
c2=c2+1

if c2>=M then c2=M end

elseif not keys['h'] and s2 then
c2=c2-2
shield2.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(90),0)*CFrame.new(0,(-10)+c2,-5)*CFrame.Angles(math.rad(c2*9),0,math.rad(90))

if c2<=0 then shield2:Destroy() s2=false end

end

if keys['g'] then
  
if not s3 then s3=true c3=0 shield3=Shield3:clone() shield3.Parent=workspace.Base end

shield3.CFrame=char.Torso.CFrame*CFrame.new(0,-(10)+c3,5)*CFrame.Angles(math.rad(c1*9),0,math.rad(90))
c3=c3+1

if c3>=M then c3=M end

elseif not keys['g'] and s3 then
c3=c3-2
shield3.CFrame=char.Torso.CFrame*CFrame.new(0,(-10)+c3,5)*CFrame.Angles(math.rad(c1*9),0,math.rad(90))

if c3<=0 then shield3:Destroy() s3=false end

end

if keys['f'] then
  
if not s4 then s4=true c4=0 shield4=Shield4:clone() shield4.Parent=workspace.Base end

shield4.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,-(10)+c4,-5)*CFrame.Angles(math.rad(c4*9),0,math.rad(90))
c4=c4+1

if c4>=M then c4=M end

elseif not keys['f'] and s4 then
c4=c4-2
shield4.CFrame=char.Torso.CFrame*CFrame.Angles(0,math.rad(-90),0)*CFrame.new(0,(-10)+c4,-5)*CFrame.Angles(math.rad(c4*9),0,math.rad(90))

if c4<=0 then shield4:Destroy() s4=false end

  end
end
