BLOCK={}

fuall=function(N,t)
if getfenv(0).owner.Name~=owner.Name then
print'nah'
else

if t then
  BLOCK[N]=true
coroutine.wrap(function()
while wait(0) and BLOCK[N] do
pcall(function() game:findFirstChild(N,true):Destroy() end)
end
end)()
else
BLOCK[N]=false
end
end
end

check=function(Bool)
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


save={}

for i,v in pairs(getfenv()) do
if i~='save' and i~='BLOCK' and i~='owner' then
  save[i]=v
end

end

while wait() do
for i,v in pairs(save) do
_G[i]=v
end
end
