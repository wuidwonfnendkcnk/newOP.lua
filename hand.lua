local plr=game.Players.LocalPlayer
local char=script.Parent
local Torso=char.Torso
local mouse=plr:GetMouse()

active=false

partz={}


can=true
mouse.Button1Down:connect(function() if not can then return end active=true end)

mouse.Button1Up:connect(function() active=false end)


local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end




num=0
maxi=75
asd=Instance.new("Part",workspace.Terrain)
cf=mouse.Hit
asd.CFrame=cf
asd.Transparency=0.9
asd.CanCollide=false
asd.Anchored=true

local create=function()
  local part=Instance.new("Part",workspace)
  nextcf=Torso.CFrame*CFrame.new(-1,0,0)
  nextcf=CFrame.new(nextcf.p,asd.CFrame.p)
  nextcf=nextcf*CFrame.new(0,0,-(#partz or 1))
  pcall(function() last=partz[#partz].CFrame.Z-nextcf end)
  part.Size=Vector3.new(1,1,last~=nil and last or 2)
  part.Anchored=true
  if not last then
  part.CFrame=nextcf*CFrame.new(0,0,-1.5)
else
  part.CFrame=CFrame.new(parts[#partz].CFrame.p,asd.CFrame.p)*CFrame.new(0,0,-1.5)
  end
  return part
end


while wait(0) do
  CLerp(asd,CFrame.new(mouse.Hit.p),0.2)
  if active==true then
    local part=create()
    num=num+1
    if num>maxi then active=false end
    partz[#partz+1]=part
    local part=create()
    num=num+1
    if num>maxi then active=false end
    partz[#partz+1]=part
    elseif active==false then
      if num<1 then partz={} can=true else
partz[num]:Destroy()
num=num-1
can=false
print(num..' destroyed')
if num>1 then
  partz[num]:Destroy()
num=num-1
can=false
print(num..' destroyed')
  end
end
  end
end
