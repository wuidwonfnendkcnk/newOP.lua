local BOT=Instance.new("Part",Workspace)
BOT.Name='Botty'






local Responses={

{
Main = {
"who",
"r",
"u"
}

,

Response = {
{"I am botty, how goes it",function(plr) return ", "..plr.Name.."?" end}
}
}


}



local Chat=function(respT,PLR)
print(respT[1]..respT[2]())
end

local findmatch=function(P,txt)
for i=1,#Responses do
txt=txt:lower()
if txt:match(Responses[i].Main[1]) or txt:match(Responses[i].Main[2]) or txt:match(Responses[i].Main[3])  then
Chat(Responses[i].Response[math.random(1,#Responses[i].Response)],P)
end
end
end
