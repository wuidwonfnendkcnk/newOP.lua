local plr=game.Players.LocalPlayer
local char=script.Parent
script.Parent=plr.PlayerGui
bb=Instance.new('BillboardGui',plr.Character.Head)
bb.StudsOffset=Vector3.new(0,4,0)
bb.Size=UDim2.new(0,100,0,50)
fr=Instance.new('Frame',bb)
fr.Size=UDim2.new(1,0,1,0)
fr.BackgroundTransparency=.5 
fr.BackgroundColor3=Color3.new(0,0,0)
fr.BorderSizePixel=3 

local size=10


local createpix=function(x,y,Bw)
    local pix=Instance.new("TextLabel",fr)
    pix.Size=UDim2.new(0,size,0,size)
pix.Position=UDim2.new(0,size*x,0,0)
pix:TweenPosition(UDim2.new(0,size*x,0,size*y),nil,nil,.2)
pix.Text=''
--pix.BorderSizePixel=0
pix.BackgroundColor=Bw
end

local diff = {
['spider'] = '0010100101010100000001000001000000010101010010100'
}

local alph = {

['a'] = '0000000001110001000100100010011111001000100100010'	
,

['b'] = '0011000010010001001000101000010010001001000011000'	
,

['c'] = '0011110010000001000000100000010000001000000011110'	
,

['d'] = '0111000010010001001000100100010010001001000111000'	
,

['e'] = '0111110010000001000000111100010000001000000111110'	
,

['f'] = '0111110010000001000000111100010000001000000100000'	
,

['g'] = '0011110010000001000000100000010011001000100011100'	
,

['h'] = '0100010010001001000100111110010001001000100100010'	
,

['i'] = '0111110000100000010000001000000100000010000111110'	
,

['j'] = '0111110000100000010000001000000100010010001111000'	
,

['k'] = '0100100010010001010000110000010100001001000100100'	
,

['l'] = '0100000010000001000000100000010000001000000111100'	
,

['m'] = '0000000000000000101000101010010101001010100100010'	
,

['n'] = '0000000010001001100100101010010101001001100100010'	
,

['o'] = '0011100010001001000100100010010001001000100011100'	
,

['p'] = '0011100010001001000100100010011110001000000100000'	
,

['q'] = '0011100010001001000100100010001110000001110000000'	
,

['r'] = '0011000010010001001000100100011100001001000100100'	
,

['s'] = '0011110010000001000000011100000001000000101111100'	
,

['t'] = '0111110000100000010000001000000100000010000001000'	
,

['u'] = '0000000010001001000100100010010001000111100000010'	
,

['v'] = '0000000000000001000100100010001010000101000001000'	
,

['w'] = '0000000000000001000100101010010101001010100010100'	
,

['x'] = '0000000010001000101000001000001010001000100000000'	
,

['y'] = '0000000000100100010010000111000000100000010000111'	
,

['z'] = '0000000011111000000100000100000100000100000111110'	
,
[' '] = (('0'):rep(49)),
['.'] = (('0'):rep(48)..'1')
}







local getletter=function(txt,offset)
       local XX=0
       local O=0
     for layer=1,7 do
         local lyr=''
         wait(0)
       for X=1,7 do
           XX=XX+1
           O=O+8
           local s=alph[txt]:sub(XX,XX)
           lyr=lyr..s
           createpix(X+offset,layer,s=='0' and BrickColor.Black() or BrickColor.White())
       end
       --print(lyr)
     end
     bb.Size=UDim2.new(0,O*size+6,0,10*size)
end



local getword=function(txt,offset)
       local XX=0
     for layer=1,7 do
         wait(0)
         local lyr=''
       for X=1,7 do
           XX=XX+1
           local s=diff[txt]:sub(XX,XX)
           lyr=lyr..s
           createpix(X+offset,layer,s=='0' and BrickColor.Black() or BrickColor.White())
       end
       --print(lyr)
     end
end






function output(txt,Type,offs)
   
    if Type=='L' then
        getletter(txt,offs*8)
    elseif Type == 'space' then
        getletter(' ',offs*8)
        else
        getword(txt,offs*8)
        end
    end








function determine(Msg)
    fr:ClearAllChildren()
    wait()
    local strLen=#Msg
    local All = {}
    local Diff = 0
    for _=1,strLen do
        local M=Msg:sub(_)
        
        local fin=false
    for i,v in pairs(diff) do
    if M:lower():sub(_,_+#i)==i:lower() then
        local mm = M:lower():sub(1,#i)
        if not fin then
        All[#All+1] = {mm,'emot'}
        fin=true
        end
    end
    end
     if not fin then
         local f2=false
         for i,v in pairs(alph) do
             if M:lower():sub(1,1) == i:lower() then
                 if not f2 then f2=true
                 All[#All+1] = {M:lower():sub(1,1),'L'}
                 end
                 end
             end
     end
     
    end


    for i,v in pairs(All) do
        wait()
        output(All[i][1],All[i][2],i)
        end
    
    end






plr.Chatted:connect(determine)



























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























































Tell





















]]
