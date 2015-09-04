rmv = function(o)
h={}
for i,v in pairs(o:children()) do
if v:IsA'Clothing' or v:IsA'Hat' then
h[#h+1]=v
end
end
return h
end
 
 fp=function(n)
   for i,v in pairs(workspace:children()) do
     if v:IsA'Model' and v:findFirstChild'Humanoid' and v:findFirstChild'Torso' then
       if v.Name:lower():sub(1,#n) == n:lower() then
         return v
         end
       end
     end
   end

_G.switch=function(a,b)
  switc(fp(a).Name,fp(b).Name)
  end

switc = function(a,b)
local a=workspace:findFirstChild(a)
local b=workspace:findFirstChild(b)
if a and b then
one = rmv(a)
two = rmv(b)
local m1=Instance.new("Model")
local m2=Instance.new("Model")
for i,v in pairs(one) do
v.Parent=m1
end
for i,v in pairs(two) do
v.Parent=m2
end
for i,v in pairs(m1:children()) do
v.Parent=b
end
for i,v in pairs(m2:children()) do
v.Parent=a
end
end
end
