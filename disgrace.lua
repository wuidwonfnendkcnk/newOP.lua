local fails={}

_G.A=function(Fail)
fails[#fails+1]=Fail
end


local Chat=game:service'Chat'.Chat
A'fail!'
A'am a p00phead'
A'cri 2 mommi'
A'm getting rekt!!'
A'think isl is boss'
A'm such a scr0b'
A'is sad case of n00biness'
A'..coulda di3d in ur @rms 2nite'
A'lost 2 the boss, named island!1!!'
A'lol'
A'sai no'
A'.. I.. omg!! say it aint soooooooooooooooooooo'
A'..k wat?'

_G.disgrace=function(n)
local plr = function()
for i,v in pairs(workspace:children()) do
if v.Name:lower():sub(1,#n)==n:lower() then return v end
end
return false
end

local plr=plr()
if not plr then return end
local wrap=coroutine.wrap(function()
while wait() and plr~=nil and plr.Parent~=nil and plr:findFirstChild'Head' do
Chat(fails[math.random(1,#fails)])
wait(math.random(1,23)/8)
end
end)

wrap()

end


