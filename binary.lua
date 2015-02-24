local Binary='0'
local Model=Instance.new("Model",Workspace)
Instance.new("Part",Model)
local things = {
{on=function() Model.Part.CFrame=Model.Part.CFrame*CFrame.Angles(0,0.1,0) end, off=function() Model.Part.CFrame=Model.Part.CFrame*CFrame.Angles(0,-0.1,0) end}
}

_G.change = function(newB)
Binary=newB
for i=1,#Binary do
local main=Binary:sub(i,i)
local obv=things[i]
if main=='0' then
obv.off()
else
obv.on()
end
end
end
