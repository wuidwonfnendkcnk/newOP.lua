block=Instance.new("Part",owner.Character)
block.Size=Vector3.new(5,5,5)
block.Anchored=true
blk=block:clone()
ang=0
local CLO=script:clone()
script.Parent=nil
coroutine.wrap(function()
while wait(0) do
if not script then CLO.Parent=workspace end
if not block then 
if owner and owner.Character then blk.Parent=owner.Character else blk.Parent=workspace end
block=blk
blk=block:clone()
end
end
end)
local cln=Instance.new("Part")
cln.Anchored=true
cln.Size=Vector3.new(1,1,3)
local curr=1
while wait(0) do
	local spot=owner.Character.Torso.CFrame
ang=ang+5
curr=curr+1
if curr>10 then curr=0 end
block.CFrame=spot*CFrame.Angles(math.rad(-ang),math.rad(ang),math.rad(ang/10))*CFrame.new(-50,0,0)
local cln=cln:Clone()

cln.Parent=workspace
cln.CFrame=script.Parent.CFrame*CFrame.new(0,0,-1)
cln.Transparency=tonumber('0.'..curr)
cln.BrickColor=BrickColor.new('Toothpaste')
game.Debris:AddItem(cln,1)

end
