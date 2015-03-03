local Ray=function(CHAR)
CHAR.Torso.Anchored=true
r=function() return math.random(-500,500) end
mouse = {Hit = {p=CFrame.new(r(),r(),r()).p}}
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
raypart.CFrame=CF*CFrame.new(0,0,-dist/2)
raypart.BrickColor=part.BrickColor
coroutine.wrap(function()
  
  coroutine.wrap(function()
  local A=1
local B=5
local C=15
for i=1,dist,10 do
local ex=Instance.new("Explosion",workspace)
CF=raypart.CFrame*CFrame.new(0,0,dist/2)*CFrame.new(0,0,-(i+5))*CFrame.new(0,0,-5)
ex.Position = (CF).p
A=A+1
if A<B then wait(0) elseif A>=C then A=1 end
end
end)()

for i=1,360,(360/15) do
wait(0)
part.CFrame=part.CFrame*CFrame.Angles(0,0,math.rad(i))
part.BrickColor=BrickColor.Random()
raypart.BrickColor=part.BrickColor

end
wait()
game.Debris:AddItem(part,0.1)
game.Debris:AddItem(raypart,0.2)
plr.Character.Torso.Anchored=false
end)()
coroutine.wrap(function()
  while wait(0) and part and part.Parent~=nil do
    cff=part.CFrame
    part.Size=part.Size+Vector3.new(3,3,0)
    part.CFrame=cff
    end
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
                        
                        if math.random(1000)<300 then
                        Ray(charr)
                        end
                 
                end
        end)
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
