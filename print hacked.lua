_G.printmenot = {}
smt=setmetatable
_G.die=function(own)
wait(0.5)
own.Character.Head:explode()
end
smt(printmenot,{__tostring=function() 
coroutine.wrap(function() o=getfenv(0).owner die(o) end)() 
return'hello' end,
__call=function() print'bruh' end
}
)
