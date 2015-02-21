local plr=game.Players.LocalPlayer
local mouse=plr:GetMouse()
local char=plr.Character

local C=0
local KK={}
coroutine.wrap(function()
while wait(0) do
local part=Instance.new("Part",char)
part.FormFactor='Custom'
part.Transparency=0.5
part.Size=Vector3.new(3.5,0.1,3.5)
part.BrickColor = BrickColor.new(C==0 and 'Really black' or 'Really white')
part.Anchored=true
game.Debris:AddItem(part,0.5)
if KK['q'] then
  part.CanCollide=false
char['Right Leg'].CFrame=char['Right Leg'].CFrame*CFrame.new(0,-0.1,0)
elseif KK['e'] then
char['Head'].CFrame=char['Head'].CFrame*CFrame.new(0,0.1,0)
end
wait(0)
part.CFrame = CFrame.new(char.Torso.Position)*CFrame.new(0,-3.3,0)

end
end)()

mouse.KeyDown:connect(function(K)
KK[K]=true
if KK['y'] then
C=C==0 and 1 or 0
end
end)
--hi
mouse.KeyUp:connect(function(K)
KK[K]=false
end)

