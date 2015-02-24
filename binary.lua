local Binary='000000000'
local Model=Instance.new("Model",Workspace)
Instance.new("Part",Model)
Instance.new("Part",Model).Name='ABC'
local things = {
  
{on=function() 
  Model.Part.CFrame=Model.Part.CFrame*CFrame.Angles(0,0.1,0) 
end,
off=function() 
 Model.Part.CFrame=Model.Part.CFrame*CFrame.Angles(0,-0.1,0) 
end
}

,

{on=function()
 Model.Part.CFrame=Model.Part.CFrame*CFrame.new(0,0,-1)
end,
off = function()
 Model.ABC.CFrame=Model.Part.CFrame*CFrame.new(0,2,0)
end}

,

{on=function()
 Model.Name=Binary
end,
off = function()
 Model.Name='Model'
end}

}

_G.change = function(newB)
Binary=newB
for i=1,#Binary do
local main=Binary:sub(i,i)
local obv=things[i]
wait(0)
if not obv then else
if main=='0' then
obv.off()
else
obv.on()
end
end
end
end

change(Binary)
