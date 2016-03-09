local sp=function(s,cf,tt)
if math.random(1,100)==math.random(1,100) then
game.Lighting.TimeOfDay=tostring(math.random(10,120)/10)..":00:00"
end
local part=Instance.new("Part",workspace)
part.Size=s
part.Transparency=0.5
part.CFrame=cf
part.Anchored=true
game.Debris:AddItem(part,tt)
end

p=game.Players.LocalPlayer
c=p.Character
for asd=1,32,4 do
wait(0)
  for i=0,360,20 do
     if i==100 or i==200 or i==300 then
       if math.random(1,5) == math.random(1,5) then
        wait(0)
        end
      end
sp(Vector3.new(2,2,2),c.Torso.CFrame*CFrame.Angles(math.rad(i>360/2 and -45 or 45),0,0)*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,asd,-20),1.5)
  end
end
