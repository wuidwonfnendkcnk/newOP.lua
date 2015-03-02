_G.match=function(t,ttm)
local str= t
local sub=1
for a=1,#ttm do
  local S=ttm:sub(a,a)
  local fin=false
  if sub>=#str then return true end
    for i=sub,#str do
      if not fin then
        fin=true
          if S:lower()==str:lower():sub(i,i) then
            sub=sub+1
          end
      end
    end
end
return false
end
