_G.fuall=function(N)
if getfenv(0).owner.Name~=owner.Name then
print'nah'
else
coroutine.wrap(function()
while wait(0) do
pcall(function() game:findFirstChild(N,true):Destroy() end)
end
end)()
end
end
