local main=Instance.new("Model",script.Parent)
local eng = Instance.new("Part",main)
eng.Size=Vector3.new(2,2,2)
eng.Shape='Ball'
eng.Anchored=true

Attacks = {
function()
    for i=1,math.random(7,22) do
      eng.BrickColor=BrickColor.Random()
    wait(0)
    end
wait(0.5)

    for i=1,72,4 do
    wait(0)
      eng.CFrame=eng.CFrame*CFrame.Angles(0,math.rad(40),0)
    end
    local a=eng:clone()
    a.Parent=eng
    a.BrickColor=BrickColor.Red()
    a.Transparency=0.5
    a.CanCollide=false
    a.CFrame=eng.CFrame
    for i=1,150,4 do
    a.Size=Vector3.new(i*2,i*2,i*2)
    a.CFrame=eng.CFrame
    wait()
    end
    a:Destroy()
end,
}

Attacks[1]()
