_G.fling=function(N,dir,spd)
local N=N>300 and 300 or N
local cf=CFrame.new(0,10,0)*dir
spdd=spd or 300
for i=1,N do
local p=Instance.new("Part",workspace.Base)
p.FormFactor='Custom'
p.Size=Vector3.new(0.2,0.2,0.2)
p.CFrame=cf
p.Velocity=p.CFrame.lookVector*spdd
wait()
end
end
