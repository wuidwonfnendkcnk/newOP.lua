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
Shield1.Size=Vector3.new(7.5,10,1)
Shield1.Anchored=true
Shield1.Transparency=0.8
Shield1.BrickColor=BrickColor.New'Teal'

while wait(0) do
  if keys['t'] then
  
if not s1 then s1=true c1=0 shield1=Shield1:clone() shield1.Parent=workspace.Base end

shield1.CFrame=char.Torso.CFrame*CFrame.new(0,-(10)+c1,-5)
c1=c1+1

if c1>=M then c1=M end

elseif not keys['t'] and s1 then
c1=c1-0.5
shield1.CFrame=char.Torso.CFrame*CFrame.new(0,(-10)+c1,-5)

if c1<=0 then shield1:Destroy() s1=false end

  end
end
