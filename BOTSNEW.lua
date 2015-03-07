GetRandom=function()
  local chars={}
  for i,v in pairs(Workspace:children()) do
    if v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
      chars[#chars+1]=v
      end
  end
  return chars[math.random(1,#chars)]
  end

local Ray=function(CHAR)
CHAR.Torso.Anchored=true
r=function() return math.random(-500,500) end
mouse = {Hit = {p=CFrame.new(r(),math.random(-3,10),r()).p}}
  if math.random(100)<30 then
    mouse.Hit.p=GetRandom().Torso.CFrame.p
    CHAR.Torso.CFrame=CFrame.new(CHAR.Torso.Position,mouse.Hit.p)
    CHAR.Torso.Anchored=false
   for i=1,20 do
     wait(0.1)
    CHAR.Humanoid:MoveTo(mouse.Hit.p)
  end
  
  end
  CHAR.Torso.Anchored=true
local part=Instance.new("Part",CHAR)
part.Size=Vector3.new(10,10,1)
part.Anchored=true
part.Transparency=0.3
local p=mouse.Hit.p
local start=CHAR.Torso.CFrame*CFrame.new(0,0,-5)
local s=start*CFrame.new(0,0,5)
part.CFrame=CFrame.new(start.p,p)*CFrame.new(0,0,-7)


local CF=part.CFrame
local dist=(start.p-p).magnitude
if dist>700 then dist=700 end
local raypart=Instance.new("Part",CHAR)
raypart.Size=Vector3.new(2,2,dist)
raypart.Anchored=true
raypart.Name='ray'
raypart.Transparency=1
raypart.CFrame=CF*CFrame.new(0,0,-dist/2)
raypartCframe=raypart.CFrame
raypart.BrickColor=part.BrickColor
coroutine.wrap(function()
  
  

for i=1,dist/3,5 do
wait(0)
part.CFrame=part.CFrame*CFrame.Angles(0,0,math.rad(i))
part.BrickColor=BrickColor.Random()
raypart.BrickColor=part.BrickColor

end
wait()
game.Debris:AddItem(part,1)
game.Debris:AddItem(raypart,0.5)
plr.Character.Torso.Anchored=false
end)()
coroutine.wrap(function()
 for i=1,dist/3,5 do
   wait(0)
   if i>400/3 then
     DIE=true
     game.Lighting.Ambient=BrickColor.Random().Color
     game.Lighting.OutdoorAmbient=BrickColor.Random().Color
     CFF=raypart.CFrame
     raypart.FormFactor='Custom'
     raypart.Size=raypart.Size+Vector3.new(0.05,0.05,0.05)
     wait(0)
     raypart.CFrame=raypartCframe
     end
    cff=part.CFrame
    part.Size=part.Size+Vector3.new(3,3,0)
    part.CFrame=cff
  end
  
  coroutine.wrap(function()
    raypart.Transparency=0
  local A=1
local B=5
local C=15
for i=1,dist,10 do
local ex=Instance.new("Part",workspace)
ex.Size=Vector3.new(7,7,7)
ex.Shape='Ball'
ex.BrickColor=BrickColor.Random()
CF=raypart.CFrame*CFrame.new(0,0,dist/2)*CFrame.new(0,0,-(i+5))*CFrame.new(0,0,-5)
ex.CFrame = (CF)
game.Debris:AddItem(ex,0.1)
ex.Touched:connect(function(h)
  if h.Name=='ray' then return end
  pcall(function() h.Parent.Humanoid:TakeDamage(20) end)
  end)
ex.CanCollide=false
Aa=ex:clone()
A=A+1
if A<B then wait(0) elseif A>=C then A=1 end
end
wait()
if DIE then
  DIE=false
   Instance.new("Explosion",Workspace).Position=CF.p
   Aa.Parent=workspace
   Aa.BrickColor=BrickColor.Random()
   Aa.CFrame=CF
   game.Debris:AddItem(Aa,0.2)
  end
end)()

end)()


end



char=owner.Character
char.Archivable=true
clone=char:clone()
names = {}
for i=1,50 do
    names[#names+1] = 'Bot # '..i
end

  r=function()
        return math.random(-300,300)
    end

for i,v in pairs(Workspace:children()) do
    names[#names+1] = tostring(v.Name..'# '..tostring(math.random(-i,i)))
    end
clone.Name=names[math.random(1,#names)]
  
    move=function(charr)
        local num=#charr:children()
        local bckup = charr:clone()
        charr.Humanoid.WalkSpeed=math.random(30,100)
        charr.Humanoid.Died:connect(function()
            game.Debris:AddItem(charr,1)
            wait(1)
            pcall(function()
                
            bckup.Parent=Workspace
            bkcup:MoveTo(Vector3.new(r(),r()/2,r()))
                end)
            pcall(function() move(bckup) end)
            end)
        local nw=coroutine.wrap(function()
            while wait() and charr and #charr:children()>=num do
            
        charr.Humanoid:MoveTo(charr.Torso.Position+Vector3.new(r(),0,r()) )
                    if math.random(10)==2 then
                        charr.Humanoid.Jump=true
                        end
                        
                        
                 
                end
        end)
        coroutine.wrap(function()
          while wait() do
            z=math.random(6)
            wait(z)
            if math.random(10000)<math.random(1000) and charr then
                        Ray(charr)
                        end
            end
          end)()
        nw()
    end
        
coroutine.wrap(function() 
  while wait() do
      local N=names[math.random(1,#names)]
          local NN=N
      for i=1,20 do
          wait()
      local c=clone:clone()
      c.Parent=Workspace
      c.Name=N
          wait()
          c:MoveTo(Workspace.Base.Position+Vector3.new(r(),0,r()))
              move(c)
      z=math.random(5)
      wait()
      N=names[math.random(1,#names)]
      end
      
      repeat wait() until not Workspace:findFirstChild(NN)
  end
end)()
