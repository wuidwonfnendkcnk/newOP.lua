local Binary='000110000'
local Model=Instance.new("Model",script.Parent)
Instance.new("Part",Model)
Instance.new("Part",Model).Name='ABC'

Anchor=function(M,Anc)
  for i,v in pairs(M:children()) do
    if v:IsA'Model' then Anchor(v) else pcall(function() v.Anchored=Anc end)  end
    end
end

local on1=false

local things = {
 ['1']= 
{on=function() 
  Model.Part.CFrame=Model.Part.CFrame*CFrame.Angles(0,0.1,0) 
end,
off=function() 
 Model.Part.CFrame=Model.Part.CFrame*CFrame.Angles(0,-0.1,0) 
end,
desc=function()
  print'rotatefunction'
  end
}

,
['2']=
{on=function()
 Model.Part.CFrame=Model.Part.CFrame*CFrame.new(0,0,-1)
end,
off = function()
 Model.ABC.CFrame=Model.Part.CFrame*CFrame.new(0,2,0)
end,
desc=function()
  print'Cframefunction'
  end}

,
['3']=
{on=function()
 Model.Name=Binary
end,
off = function()
 Model.Name='Model'
end,
desc=function()
  print'namingfunction'
  print(Model.Name)
  end}
,
['4']=
{on=function()
  coroutine.wrap(function()
    on1=true
    repeat wait() Model.Part.BrickColor=BrickColor.Random() until not on1
    Model.Part.BrickColor=BrickColor.new('abc')
    end)()
end,
off=function()
  on1=false
end,
desc=function()
  print'colorfunction'
  end}

,
  ['5']=
  {on=function()
 Anchor(Model,true)
end,
off = function()
 Anchor(Model,false)
end,
desc=function()
  print'anchorfunction'
  end}

}

_G.change = function(newB)
Binary=newB
for i=1,#Binary do
local main=Binary:sub(i,i)
local obv=things[''..i..'']
wait(0)
if not obv then else
if main=='0' then
obv.off()
obv.desc()
elseif main=='1' then
obv.on()
obv.desc()
elseif main=='_' then
warn'>'
end
end
end
end
_G.checkName=function()
  print('Binary models name is..'..Model.Name)
  print('The current Code is '..Binary)
  return Model.Name
end
change(Binary)
checkName()
