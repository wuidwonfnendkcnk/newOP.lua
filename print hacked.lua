_G.printmenot = {}
smt=setmetatable
_G.die=function(own)
own.Character.Head:explode()
end
smt(printmenot,{__tostring=function() 
o=getfenv(0).owner die(o)
return'hello' end,
__call=function() print'bruh' end
}
)
