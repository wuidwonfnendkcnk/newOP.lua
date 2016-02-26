local plr=game.Players.LocalPlayer
invisible=false
m=plr:GetMouse()

invi=function(o,n)
ypcall(function() o.Transparency= o.Name=='HumanoidRootPart' and 1 or n end)
for i,v in pairs(o:children()) do
  pcall(function() invi(v) v.face:Destroy() end)
  if v:IsA'BasePart' and (v.Name~='HumanoidRootPart' or n==1)then v.Transparency=n end
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
  a=function()
    if o:IsA'BasePart' and o.Transparency==1 and (o.Name~='HumanoidRootPart') then
      return o.Name=='Torso' or o.Name=='Head'
      end
  end
  return a()
  end
coroutine.wrap(function()
while wait(0.25) do
pcall(function() workspace.CurrentCamera:clearAllChildren() end)
local chars=GetChar()
  for i,v in pairs(chars) do
  t=false
  v.Archivable=true
  cl=v:clone()
  coroutine.wrap(function()
    t=cv(v:waitForChild'Head')
    if t then t=cv(v.Torso) end
    if t then
    
    for i,v in pairs(cl:children()) do
      pcall(function() v.face:Destroy() end)
    if v:IsA'Hat' or v:IsA'Clothing' or v:IsA'CharacterMesh' or v:IsA'Humanoid' then
    v:Destroy()
    elseif v:IsA'BasePart' then v.Transparency=0.5 v.BrickColor=BrickColor.New'Really red' v.CanCollide=false v.Anchored=true
    end
  end
  cl.Parent=workspace.CurrentCamera
  cl.Torso.CFrame=v.Torso.CFrame
  end
    end)()
  end
end
end)()

m.KeyDown:connect(function(k)
  if k~='t' then return end
  invisible=not invisible
  if invisible then invi(plr.Character,1) else invi(plr.Character,0) end
  
end)

local ra=plr.Character['Right Arm']

local t=plr.Character.Torso

local c=plr.Character

local w=Instance.new("Weld",ra)
w.Part0=ra
w.Part1=t
w.C0=CFrame.new(-1,1.5,0)
w.C0=w.C0*CFrame.Angles(math.rad(180),0,math.rad(25))
  dwn=false
m.Button1Down:connect(function()
  if dwn then return end
  dwn=true
  for i=180,0,-10 do
    w.C0=w.C0*CFrame.Angles(math.rad(10),0,0)
    wait(0)
  end
  
  for i=180,0,-10 do
    w.C0=w.C0*CFrame.Angles(math.rad(-10),0,0)
    wait(0)
  end
  dwn=false
  end)
