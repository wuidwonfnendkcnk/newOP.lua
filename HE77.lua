wait()
repeat script.Parent=nil pcall(function() script:Destroy() end) until not script or script.Parent==nil
wait()
tod=0
col=Color3.new(255,0,0)
col2=Color3.new(10/255,1/255,1/255)
dist=100

while wait(0) do
game.Lighting.TimeOfDay=tod
game.Lighting.FogColor=col
game.Lighting.FogEnd=dist
game.Lighting.OutdoorAmbient=col2
Instance.new("Hint",workspace.Base).Text='welcome to hell'
ypcall(function()
script.Parent=nil
end)()
end
