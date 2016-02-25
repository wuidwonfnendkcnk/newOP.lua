local plr=game.Players.LocalPlayer
invisible=false
m=plr:GetMouse()

invi=function(o,n)
ypcall(function() o.Transparency=n end)
for i,v in pairs(o:children()) do
  pcall(function() invi(i) end)
  if v:IsA'BasePart' then v.Transparency=n end
  if v:IsA'Hat' or v:IsA'Clothing' then
    v:Destroy() end
  end
end

GetChar=function()
local ret={}
for i,v in pairs(workspace:children()) do
if v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
  if v.Name~=plr.Name then
ret[#ret+1]=v
end
if invisible and v.Name==plr.Name then
  ret[#ret+1]=v
  end
end
end
return ret
end

cv=function(o)
  a=pcall(function()
    if o.Transparency==1 then
      return o
      end
  end)
  return a
  end
coroutine.wrap(function()
while wait(0.25) do
pcall(function() workspace.CurrentCamera:clearAllChildren() end)
local chars=GetChar()
  for i,v in pairs(chars) do
  t=false
  v.Archivable=true
  cl=v:clone()
    for _,vv in pairs(v:children()) do
      if not t and cv(vv) then
      t=true
    end
    --print(t)
    end
    if t then
    
    for i,v in pairs(cl:children()) do
    if v:IsA'Hat' or v:IsA'Clothing' or v:IsA'CharacterMesh' then
    v:Destroy()
    elseif v:IsA'BasePart' then v.Transparency=0.5 v.BrickColor=BrickColor.New'Really red' v.CanCollide=false v.Anchored=true
    end
  end
  cl.Parent=workspace.CurrentCamera
  cl.Torso.CFrame=v.Torso.CFrame*CFrame.new(0,0,3)
    end
  end
end
end)()

m.Button1Down:connect(function()
  invisible=not invisible
  if invisible then invi(plr.Character,1) else invi(plr.Character,0) end
  
end)
