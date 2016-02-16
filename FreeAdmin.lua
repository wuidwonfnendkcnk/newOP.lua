Cmdz={}

NewCmd=function(cmd,sep,action)
Cmdz[cmd]={['Sep']=sep,['Action']=loadstring(action)}
end

Chat=function(plr,msg)
  for i,v in pairs(Cmdz) do
    if i:lower()==msg:lower():sub(1,#i) then
      if msg:lower():sub(#i,#i+#Cmdz['Sep']
      
      end
    end
  end
end
