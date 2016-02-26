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
w.C0=CFrame.new(-1.25,1.5,0)
local sword=Instance.new("Part",c)
sword.FormFactor='Custom'
  sword.Size=Vector3.new(0.5,2,0.75)
  local w2=Instance.new("Weld",sword)
  w2.Part0=sword
  w2.Part1=ra
  w2.C0=CFrame.new(0,(((ra.Size.Y/2)+0.875)),0)
local hand=Instance.new("Part",sword)
hand.FormFactor='Custom'
hand.Size=Vector3.new(1,0.25,0.75)
local w3=Instance.new("Weld",hand)
w3.Part0=hand
w3.Part1=sword
w3.C0=CFrame.new(0,-0.5,0)
cf=w.C0
w.C0=w.C0*CFrame.Angles(math.rad(180),0,math.rad(25))
  
  dwn=false
m.Button1Down:connect(function()
  if dwn then return end
  dwn=true
  for i=180,180+90,10 do
    w.C0=cf*CFrame.Angles(math.rad(i),0,math.rad((25/90)*(i-90)))*CFrame.new(0,-(((i-180)/90)/2),0)
    wait(0)
  end
  
 for i=180+90,180,-10 do
    w.C0=cf*CFrame.Angles(math.rad(i),0,math.rad((25/90)*(i-90)))*CFrame.new(0,-(((i-180)/90)/2),0)
    wait(0)
  end
  
  dwn=false
end)
Endit=function(obj)
  obj.BrickColor=BrickColor.New'Really Black'
  obj.Transparency=0.1
  local last='Neon'
  for i=1,10 do obj.Transparency=i/10 
    wait(0)
    if last=='Neon' then 
      obj.Material='Grass' else obj.Material='Neon' end last=obj.Material
  end
  
  for i=10,5,-1 do
    obj.Transparency=i/10
    obj.BrickColor=BrickColor.new'Really red'
    obj.Material='Neon'
    wait(0)
  end
  obj.Anchored=true
  wait(2)
  obj:breakJoints()
  obj.Anchored=false
  end
sword.Touched:connect(function(h)
  if dwn then
    Endit(h)
    end
  end)
