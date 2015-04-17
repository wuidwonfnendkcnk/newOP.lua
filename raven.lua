tor=script.Parent.Torso
mouse=game.Players.LocalPlayer:GetMouse()
ll,rl = script.Parent['Left Leg'],script.Parent['Right Leg']
inv=function()
ll.Transparency=1
rl.Transparency=1
end

vis=function()
ll.Transparency=0
rl.Transparency=0
end

done=false

levitate=function(of)
if of then
local part=Instance.new("Part",script.Parent)
part.Anchored=true
repeat wait()
inv()
part.CFrame=tor.CFrame*CFrame.new(0,-(2.6),0)
until done
part:Destroy()
vis()
done=false
else
done=true
end

end
curr=false
mouse.Button1Down:connect(function()
curr=not curr
levitate(curr)
end)

while wait() do
if done then
for i=1,5 do tor.CFrame=tor.CFrame*CFrame.new(0,0.5,0) wait(0) end
for i=1,5 do tor.CFrame=tor.CFrame*CFrame.new(0,-0.5,0) wait(0) end
end
end
