deb=false--debounce
success='success'--success variable, cuz idk

cd=function()--check debounce
if deb then return 'noob' end
return success
end

mR=function(n)--math round
return math.floor(n+0.5)
end

R=function(pos)--round
local x,y,z=pos.X,pos.Y,pos.Z
return Vector3.new(mR(x),mR(y),mR(z))
end

fling=function(hit,hitter)--idk
if cd()~=success or getfenv(0).owner.Name~='islandmaker2012' then--if still waiting and/or you are not me
return 'noob'
end
deb=not deb--debounce bish
local p1,p2=R(hit.Position),R(hitter.Position)
local mag=(p1-p2).magnitude
print( (tostring(p1)..": was hit at position"),tostring(p2),"-_- distance of "..mag)
wait(1)
deb=not deb
end

t=owner.Character.Torso
t.Touched:connect(function(h)
fling(t,h)
end)
