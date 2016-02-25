local plr=game.Players.LocalPlayer

GetChar=function()
local ret={}
for i,v in pairs(workspace:children()) do
if v:findFirstChild'Humanoid' and v:findFirstChild'Torso' and v.Name~=plr.Name then
ret[#ret+1]=v
end
end
return ret
end

while wait(0.25) do
pcall(function() workspace.CurrentCamera:clearAllChildren() end)
local chars=GetChar()
  for i,v in pairs(chars) do
  t=false
  v.Archivable=true
  cl=v:clone()
    for _,vv in pairs(v:children()) do
      if ypcall(function() return vv.Transparency>0 end) then
      t=true
      end
    end
    if t then
    cl.Parent=workspace.CurrentCamera
    for i,v in pairs(cl:children()) do
    if v:IsA'Hat' or v:IsA'Clothing' or v:IsA'CharacterMesh' then
    v:Destroy()
    elseif v:IsA'BasePart' then v.Transparency=0.5 v.BrickColor=BrickColor.New'Really red' v.CanCollide=false v.Anchored=true
    end
    end
    end
  end
end
