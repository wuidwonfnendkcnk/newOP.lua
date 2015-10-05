_G.rot=function(f,fpart,ang,dis,t)
coroutine.wrap(function()
local no=0
while wait(t or 0) do
fpart.CFrame=f.CFrame*CFrame.Angles(0,math.rad(ang*no),0)*CFrame.new(0,0,-dis)
no=no+1
end
end)()
end
