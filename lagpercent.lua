wait()
script:Destroy()
while wait() do
_G.code=[[
local l=100
local n=wait()*1000
n=n*2
print(math.floor((n+33)+0.5)..'/'..tostring(100)..'% nolag')
if n+33>l then
print'FAST CPU OMG'
print('rounding down '..math.floor((n+33)+0.5)..' to 100')
n=66
end
if l-n<28 then
print'lag fix recommended'
else
print('0=total lag,100=nolag at all')
print'lag fix not required.'
end
]]

if not _G.getPer then
  
_G.getPer=function()
local o=getfenv(0).owner
pcall(function()
NLS(code,o.Backpack)
end)
end

end

end
