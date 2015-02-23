local plr=game.Players.LocalPlayer
local char=script.Parent
script.Parent=plr.PlayerGui
local bb=Instance.new('BillboardGui',plr.Character.Head)
bb.StudsOffset=Vector3.new(0,2,0)
bb.Size=UDim2.new(0,200,0,100)
fr=Instance.new('Frame',bb)
fr.Size=UDim2.new(1,0,1,0)
fr.BackgroundTransparency=1
fr.BorderSizePixel=0

local createpix=function(x,y,Bw)
    local pix=Instance.new("TextLabel",fr)
    pix.Size=UDim2.new(0,10,0,10)
    pix.Position=UDim2.new(0,x*10,0,y*10)
pix.Text=''
--pix.BorderSizePixel=0
pix.BackgroundColor=Bw
end

local alph = {
['spider'] = '0010100101010100000001000001000000010101010010100'
}


local getletter=function(txt,offset)
   if alph[txt] then
       local XX=0
     for layer=1,7 do
         local lyr=''
       for X=1,7 do
           XX=XX+1
           local s=alph[txt]:sub(XX,XX)
           lyr=lyr..s
           createpix(X+offset,layer,s=='0' and BrickColor.Black() or BrickColor.White())
       end
       print(lyr)
     end
    end
end

for i=1,3 do
getletter('spider',i*8)
    end




























--[[
to create new chars

first

local Mod=Instance.new('Model',workspace)
Mod.Name='Numbers'
local int=0

for z=1,7 do
	for x=1,7 do
	local tab=Instance.new("Part",Mod)
	tab.Size=Vector3.new(5,1,5)
	tab.Anchored=true
	tab.CFrame=CFrame.new(x*5,0,z*5)
    int=int+1
tab.Name=int
	end
end


and then

local bin=''

for i=1,#Workspace.Numbers:children() do
local child=Workspace.Numbers[i]
if child.BrickColor==BrickColor.new("Really black") then
bin=bin..'1'
else
bin=bin..'0'
end
end

print(bin)






]]
