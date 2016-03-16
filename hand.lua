local plr=game.Players.LocalPlayer
local char=script.Parent
local Torso=char.Torso
local mouse=plr:GetMouse()

active=false

partz={}

local create=function()
  local part=Instance.new("Part",workspace)
  nextcf=CFrame.new(Torso.Position,mouse.Hit.p)
  nextcf=nextcf*CFrame.new(0,0,-(#partz or 1))
  pcall(function() last=partz[#partz].CFrame.Z-nextcf end)
  part.Size=Vector3.new(1,1,last or 2)
  part.CFrame=nextcf*CFrame.new(0,0,-1.5)
  return part
end

mouse.Button1Down:connect(function() active=true end)

mouse.Button1Up:connect(function() active=false end)

while wait(0) do
  if active==true then
    local part=create()
    partz[#partz+1]=part
      elseif active==false then
pcall(function()
  partz[#partz]:Destroy()
end)
  end
end
