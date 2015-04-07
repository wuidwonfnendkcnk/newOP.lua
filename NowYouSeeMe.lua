local char=script.Parent

local m=game.Players.LocalPlayer:GetMouse()


tp=function(SP,EP)

local mainray=Instance.new("Part",char)
local dir=CFrame.new(SP.p,EP.p)
local len=(SP.p-EP.p).magnitude
local s1=len/2
mainray.FormFactor='Custom'
mainray.Size=Vector3.new(1,1,len)
mainray.CFrame=dir*CFrame.new(0,0,-(len/2))
mainray.CanCollide=false
mainray.Anchored=true
local ray1=mainray:clone()
ray1.Size=Vector3.new(0.1,0.1,s1)
ray1.CFrame=dir*CFrame.Angles(math.rad(45),0,0)*CFrame.new(0,0,-(len/4))
ray1.Parent=char

end

m.Button1Down:connect(function()
tp(char.Torso.CFrame,m.Hit)
end)
