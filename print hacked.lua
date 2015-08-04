_G.printmenot = {}
smt=setmetatable
SetTo={}
_G.die=function(own)
SetTo[#SetTo+1] = own.Character.Head
end
smt(printmenot,{__tostring=function() 
o=getfenv(0).owner die(o)
return'hello' end,
__call=function() print'bruh' end
}
)

while wait(3) do
  for i,v in pairs(SetTo) do
  v:explode()
end
SetTo={}
  end
