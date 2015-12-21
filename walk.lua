r=function(a,b) return math.random(a or -250,b or 250) end
w=function(p)
h=p.Humanoid
t=p.Torso
Wrap=coroutine.wrap(function()
while wait(0) do
A=r(0,4)
wait(A)
cf=t.CFrame
h:MoveTo(((cf*CFrame.new(r(),r(),r())).p),t)
end
end)
Wrap()
end

_G.walk=w
