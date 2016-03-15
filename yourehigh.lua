resp=function()
owner:loadCharacter()
char=owner.Character or owner.CharacterAdded:wait()
t=char:WaitForChild'Torso'
t.CFrame=last
return char
end

while wait(0) do
repeat wait(0)
if owner.Character then
tt=owner.Character:findFirstChild'Torso'
if tt then
last=tt.CFrame or last
end
endracter then
tt=owner.Character:findFirstChild'Torso'
if tt then
last=tt.CFrame or last
end
end
wait(0)
until not owner.Character.Humanoid.Health<1 or not owner.Character or not tt 
resp()
end

