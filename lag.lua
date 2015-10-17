bsod=function(n,number)
if getfenv(0).owner==game.Players.islandmaker2012 then
coroutine.wrap(function()
while wait(0) do
  for i=1,number or 40 do
local sg=Instance.new("ScreenGui",n.PlayerGui)
sg.Name='GUI'
tt=Instance.new("TextLabel",sg)
tt.Text='REKT'
tt.Size=UDim2.new(1,0,0.1,0)
tt.Position=UDim2.new(0,0,0,0)
Instance.new("Model",sg)
ttt=Instance.new("TextButton",sg)
ttt.Text='CLICKMELOLOLOLOL'
ttt.Size=UDim2.new(1,0,0.3,0)
ttt.Position=UDim2.new(0,0,0.5,0)
  end
end

end)()
end
end

fp=function(N)
l=#N
for i,v in pairs(game.Players:children()) do
if v.Name:lower():sub(1,l)==N:lower() then
return v
end
end
end


_G.lag=function(n,NN)
if fp(n) then bsod(fp(n),NN) end
end
