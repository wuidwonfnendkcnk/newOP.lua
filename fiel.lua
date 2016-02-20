block=Instance.new(workspace)
block.Size=Vector3.new(2,2,2)
block.Name='asd ORB'
block.Anchored=true
block.Shape='Ball'
blk=block:clone()
ang=0
local CLO=script:clone()

coroutine.wrap(function()
while wait(0) do
if not script or script.Parent~=workspace then CLO.Parent=workspace end
if not block or block.Parent~=owner.Character or not workspace:findFirstChild('asd ORB',true) then
  blk.Parent=workspace
block=blk
blk=block:clone()
end
end
end)
local cln=Instance.new("Part")
cln.Anchored=true
cln.Size=Vector3.new(1,1,1)
local curr=1
while wait(0) do
local spot=CFrame.new(owner.Character.Torso.CFrame.p)
ang=ang+5
curr=curr+1
if curr>10 then curr=0 end
block.CFrame=spot*CFrame.Angles(math.rad(-ang),math.rad(ang),math.rad(ang/10))*CFrame.new(-10,0,0)
local cln=cln:Clone()
cln.Parent=workspace
cln.CFrame=block.CFrame*CFrame.new(0,0,0)
cln.Transparency=(curr/10)
cln.BrickColor=BrickColor.new('Toothpaste')
game.Debris:AddItem(cln,1)
end
