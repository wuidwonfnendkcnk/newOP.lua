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


_G.check=function(Bool)
  if getfenv(0).owner.Name~=owner.Name then print'Your a winner!' else
    if Bool then
      A=true
    else
      A=false
      end
    end
end

workspace.ChildAdded:connect(function(c)
  if A then
    wait(0)
    print(c.Name)
    end
  end)
