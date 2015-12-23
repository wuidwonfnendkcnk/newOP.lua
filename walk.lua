r=function(a,b) return math.random(a or -30,b or 30) end
w=function(p)
h=p.Humanoid
t=p.Torso
local Wrap=coroutine.wrap(function()
while wait(0) do
A=r(1,5)
t.CFrame=t.CFrame*CFrame.new(0,0,0.1)
print(A)
wait(A)
cf=t.CFrame
h:MoveTo(((cf*CFrame.new(r(),0,-r())).p),t)
end
end)
Wrap()
end

_G.walk=w
