local main=Instance.new("Model",script.Parent)
local eng = Instance.new("Part",main)
eng.Size=Vector3.new(2,2,2)
eng.Shape='Ball'
eng.Anchored=true
local arm1=Instance.new("Part",main)
arm1.Name='LArm'
arm1.FormFactor='Custom'
arm1.Size=Vector3.new(1.5,0.1,0.1)
local arm2=arm1:clone()
arm2.Name='RArm'


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
while wait() do
    arm1.CFrame=eng.CFrame*CFrame.new(1,0,0)
    arm2.CFrame=eng.CFrame*CFrame.new(-1,0,0)
    end
