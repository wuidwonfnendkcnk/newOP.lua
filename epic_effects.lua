local plr=game.Players.LocalPlayer
local char=plr.Character
local m=plr:GetMouse()
Attacking=false
local sp=function(s,cf,tt)
  
if math.random(1,5)==math.random(1,5) then
game.Lighting.TimeOfDay=tostring(math.random(10,120)/10)..":00:00"
game.Lighting.Ambient=Color3.new(math.random(1,250)/250,math.random(1,250)/250,math.random(1,250)/250)
game.Lighting.OutdoorAmbient=Color3.new(math.random(1,250)/250,math.random(1,250)/250,math.random(1,250)/250)
game.Lighting.Brightness=math.random(0,100)/10
end


local part=Instance.new("Part",workspace)
part.BrickColor=BrickColor.Red()
part.Size=s
part.Transparency=0.5
part.CFrame=cf
part.Anchored=false
part.CanCollide=false
part:breakJoints()
part.CFrame=cf
part:breakJoints()
part.Anchored=false


coroutine.wrap(function()
  repeat wait()
    x=math.random(0,1)
    y=math.random(0,1)
    z=math.random(0,1)
    part.Transparency=part.Transparency+0.05
    r=function() return math.random(-10,10) end
    --part.CFrame=part.CFrame*CFrame.Angles(z*r(),y*r(),z*r())
    until part.Parent~=workspace
end)()

game.Debris:AddItem(part,tt)
end




p=game.Players.LocalPlayer
c=p.Character


local block=Instance.new("Part",workspace)
block.BrickColor=BrickColor.new'Toothpaste'
block.FormFactor='Custom'
block.Size=Vector3.new(2,1,2)
block.Anchored=true


cf=c.Torso.CFrame
cf=CFrame.new(cf.X,workspace.Base.CFrame.Y+0.3,cf.Z)


coroutine.wrap(function() 
for asd=0,50,10 do
wait(0)
  for i=0,360,64 do
    
    
    
    
sp(Vector3.new(10,10,10),c.Torso.CFrame*CFrame.Angles(0,math.rad(i),0)*CFrame.Angles(math.rad(asd),0,math.rad(45))*CFrame.new(0,asd,-(asd*1.5))*CFrame.new(0,0,-5),5)
  end
end
end)()


for i=1,50,5 do wait(0) 
block.CFrame=cf*CFrame.Angles(0,math.rad(i*(7.2)),0)
cff=block.CFrame block.Size=block.Size+Vector3.new(5,0,5) block.CFrame=cff 
block.Transparency=i/50 
end


block:Destroy()




local CLerp=function(p,cf2,v)

        local st,cf1=tick'',p.CFrame;local c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12=cf1:components'';

        local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12=cf2:components'';

        local glv=function(v1,v2)return v1+(v2-v1)*v*(1+tick''-st);end;

        p.CFrame=CFrame.new(glv(c1,s1),glv(c2,s2),glv(c3,s3),glv(c4,s4),glv(c5,s5)

        ,glv(c6,s6),glv(c7,s7),glv(c8,s8),glv(c9,s9),glv(c10,s10),glv(c11,s11),glv(c12,s12));wait'';

end




wait(1)



attack1=function()
  local t=char.Torso
    cf=t.CFrame*CFrame.new(0,10,0)
    o=0
    asd=Instance.new("Part",char)
    asd.Size=Vector3.new(1,1,1)
    asd.CFrame=t.CFrame
    asd.Anchored=true
    local w=Instance.new("Weld",t)
    w.Part0=t
    w.Part1=asd
    coroutine.wrap(function()
     repeat o=o+5
       wait(0)  CLerp(asd,cf,0.15) t.CFrame=asd.CFrame until o>150
    end)()
  coroutine.wrap(function()
   for ang=0,-90,-25 do
    wait(0)
    local B=Instance.new("Part",workspace)
    B.Size=Vector3.new(7.5,7.5,1)
    B.Transparency=0.5
    B.Anchored=true
    B.BrickColor=BrickColor.Red()
    B.Material='Neon'
      coroutine.wrap(function() 
        while wait() and o<150 do
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
        end
        wait()
        for i=1,10 do
          wait(0)
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
          B.CFrame=B.CFrame*CFrame.new(0,0,-i*2)
        end
        B:breakJoints()
        for i=1,40 do
          wait(0)
          B.CFrame=B.CFrame*CFrame.Angles(math.rad(-2),0,0)*CFrame.new(0,0,-0.5)
        end
        local cl=B:clone()

      cl.CanCollide=false
      cl.Transparency=0
      cl.Parent=workspace
      cl.CFrame=CFrame.new((B.CFrame*CFrame.new(0,1,0)).p)
      cl.Touched:connect(function(h) pcall(function() h.Parent.Humanoid.Sit=true h.Parent.Humanoid:takeDamage(1)
        h.Parent.Humanoid.Parent.Torso.Velocity=h.Parent.Torso.CFrame.lookVector*50 end) end)
      local CF=cl.CFrame
      cl.Anchored=false
      B:Destroy()
      for i=1,20 do
        wait(0)
        cl.FormFactor='Custom'
        cl.Size=cl.Size+Vector3.new(3,i>10 and -0.25 or 0.25,3)
        cl.CFrame=CF*CFrame.Angles(0,math.rad(i*13),0)
        cl.Transparency=i/18
      end
      cl:Destroy()
      asd:Destroy()
      end)()
   end
 end)()
 
 coroutine.wrap(function()
   for ang=0,90,25 do
    wait(0)
    local B=Instance.new("Part",workspace)
    B.Size=Vector3.new(7.5,7.5,1)
    B.Transparency=0.5
    B.Anchored=true
    B.BrickColor=BrickColor.Red()
    B.Material='Neon'
      coroutine.wrap(function() 
        while wait() and o<150 do
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
        end
        wait()
        for i=1,10 do
          wait(0)
          B.CFrame=cf*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-o/10)
          B.CFrame=B.CFrame*CFrame.new(0,0,-i*2)
        end
        B:breakJoints()
        for i=1,40 do
          wait(0)
          B.CFrame=B.CFrame*CFrame.Angles(math.rad(-2),0,0)*CFrame.new(0,0,-0.5)
        end
      local cl=B:clone()

      cl.CanCollide=false
      cl.Transparency=0
      cl.Parent=workspace
      cl.CFrame=CFrame.new((B.CFrame*CFrame.new(0,1,0)).p)
      cl.Touched:connect(function(h) pcall(function() h.Parent.Humanoid.Sit=true h.Parent.Humanoid:takeDamage(1)
        h.Parent.Humanoid.Parent.Torso.Velocity=h.Parent.Torso.CFrame.lookVector*50 end) end)
      local CF=cl.CFrame
      cl.Anchored=false
      B:Destroy()
      for i=1,20 do
        wait(0)
        cl.FormFactor='Custom'
        cl.Size=cl.Size+Vector3.new(3,i>10 and -0.25 or 0.25,3)
        cl.CFrame=CF*CFrame.Angles(0,math.rad(i*13),0)
        cl.Transparency=i/18
      end
      cl:Destroy()
      end)()
   end
end)()
Attacking=false
end

attack2=function()
	a=0
  for i=1,30,5 do
      wait(0)
    
    local sphere=Instance.new("Part",char)
    sphere.Size=Vector3.new(i*2,i*2,i*2)
    a=a+sphere.Size.Z/2
    sphere.Shape='Ball'
    sphere.Anchored=true
    sphere.Touched:connect(function(h)
      if h.Parent==char then return end
      pcall(function() h.Parent.Humanoid.Sit=true h.Parent.Humanoid:takeDamage(0.5)
        h.Parent.Humanoid.Parent.Torso.Velocity=Vector3.new(0,50,-10) end)
      end)
    sphere.Material=workspace.Base.Material
    sphere.BrickColor=workspace.Base.BrickColor
    sphere.CFrame=char.Torso.CFrame*CFrame.new(0,0,-(2+(i)))*CFrame.new(0,0,-(a/1.3))
    	
      sphere.CFrame=CFrame.new(sphere.CFrame.X,0,sphere.CFrame.Z)
    coroutine.wrap(function()
      wait(1.2)
      for i=1,10 do
        sphere.Transparency=i/10
        wait(0)
      end
      game.Debris:AddItem(sphere,0.1)
      end)()
  end
  Attacking=false
end


attack3=function()
local anim=Instance.new("Part",char)
    anim.Size=Vector3.new(1,1,1)
    anim.Anchored=true
    anim.CFrame=t.CFrame
    char.Humanoid.Jump=true
    t.Anchored=true
    local okcf=anim.CFrame
    
    
    for i=1,360,20 do
      wait(0)
      anim.CFrame=okcf*CFrame.new(0,i/65,-i/30)*CFrame.Angles(math.rad(-(i/2)),0,0)
        CLerp(t,anim.CFrame,0.5)
    end
    
    local a=360/65
    local b=360/30
    local c=180
    okcf=okcf*CFrame.new(0,a,-b)*CFrame.Angles(math.rad(c),0,0)
    
      for i=1,380,25 do
        CLerp(t,anim.CFrame,0.5)
        anim.CFrame=okcf*CFrame.new(0,-i/30,i/20)*CFrame.Angles(math.rad(-(i/2)),0,0)
        wait()
        lolokay=i
      end
    CLerp(t,anim.CFrame,0.5)
        anim.CFrame=okcf*CFrame.new(0,-lolokay/30,lolokay/20)*CFrame.Angles(math.rad(-((lolokay+25)/2)),0,0)
    anim:Destroy()
    local CFF=t.CFrame
    repeat CFF=CFF+Vector3.new(0,-1,0) until CFF.Y<3
    repeat wait(0)
    CLerp(t,CFF,0.5)
  until t.CFrame.Y<=3
  
  t.Anchored=false
  char.Humanoid.Jump=true
  coroutine.wrap(function()
  	local dmg=Instance.new("Part",workspace.Base)
  	dmg.Size,dmg.BrickColor,dmg.Material=Vector3.new(2,1,2),workspace.Base.BrickColor,workspace.Base.Material
  	dmg.Anchored=true
  	dmg.CFrame=t.CFrame
  	dmg.CanCollide=false
  	cf=CFrame.new(t.CFrame.X,1,t.CFrame.Y)
  	dmg.Touched:connect(function(h) if h.Parent==char then return end
  		pcall(function() h.Parent.Humanoid:TakeDamage(30) h.Parent.Humanoid.Sit=not h.Parent.Humanoid.Sit end) end)
  	omgangles=0
  	dmg.CFrame=cf
  	for i=1,10 do wait(0) dmg.CFrame=cf end
t.CFrame=t.CFrame*CFrame.new(0,10,0)
  	for i=1,36 do
  		wait(0)
  		t.Anchored=true
  		
  		CLerp(t,CFrame.new(t.CFrame.X,10,t.CFrame.Z)*CFrame.Angles(0,math.rad(omgangles*10),0),0.2)
  		dmg.Size=dmg.Size+Vector3.new(2,0,2)
  		dmg.CFrame=CFrame.new(t.CFrame.X,0.5,t.CFrame.Z)*CFrame.Angles(0,math.rad(omgangles*10),0)
  		omgangles=i
  	end
  	t.Anchored=false
  	dmg:Destroy()
  	end)()
 for AA=2,math.random(2,5) do
  if math.random(1,20) == math.random(1,20) then wait(0) end
  for ang=1,360,20 do
    local asdomg=t.CFrame*CFrame.Angles(0,math.rad(ang),0)*CFrame.new(0,0,-17.5)*CFrame.new(0,0,-(AA*2))
    
        if math.random(1,361)==ang then wait(0) end
    
    local block=Instance.new("Part",workspace.Base)
  
    block.Anchored=true
  block.Size=Vector3.new(5,5,5)
  block.CFrame=asdomg*CFrame.Angles(math.rad(math.random(-100,100)),math.rad(math.random(-100,100)),math.rad(math.random(-100,100)))
  block.CFrame=block.CFrame*CFrame.new(math.random(-20,20)/10,math.random(-15,5)/10,math.random(-20,20)/10)
  block.BrickColor=workspace.Base.BrickColor
  block.Material=workspace.Base.Material
  
  
  
  
 coroutine.wrap(function()
    	r=math.rad
    	mr=math.random
    	--*CFrame.Angles(r(mr(100)),r(mr(100)),r(mr(100)))
    	local spot=block.CFrame*CFrame.new(0,100,-20)
    	block.CanCollide=false
    	block.Touched:connect(function(h) if h.Parent==char then return end
    	pcall(function() h.Parent.Humanoid:TakeDamage(1) end) end)
    	coroutine.wrap(function() wait(0.5) while wait(0) and block and block.Parent do CLerp(block,spot,0.05) end end)()
      for i=1,10,0.35 do 
      	wait(0) block.Transparency=i/10 end
      block:Destroy()
      Attacking=false
    end)() 
  end
end

end

 t=char.Torso
m.KeyDown:connect(function(k)
  if Attacking then 
	return end
  
  if k=='h' then
  Attacking=true
    attack1()
  
  elseif k=='f' then
    Attacking=true
    attack2()
  elseif k=='p' then
  	Attacking=true
  attack3()
elseif k=='q' then
 local bl=Instance.new("Part",workspace)
 bl.Size=Vector3.new(2,2,4)
 bl.Anchored=true
 bl.Material=workspace.Base.Material
 bl.BrickColor=workspace.Base.BrickColor
 bl2=bl:clone()
 bl2.Parent=workspace
 bl.CFrame=char.Torso.CFrame*CFrame.new(-10,0,-10)
 bl2.CFrame=bl.CFrame*CFrame.new(10,0,0)
 local touch=function(h) 
   pcall(function() 
 		for i,v in pairs(h.Parent.Torso:children()) do 
 	pcall(function() v.C0=(h.Parent.Torso:children()[math.random(1,#h.ParentTorso:children())]).C0 
 	local p1=v.Part1
 	local p0=v.Part0
 	local w=Instance.new("Weld",p0)
 	w.Part0=p0
 	w.Part1=p1
 	w.C0=v.C0
 	w.C1=v.C1
 	end)
 		end
   end)
 end
 bl.Touched:connect(touch)
 bl2.Touched:connect(touch)
 		
 local cfr1,cfr2=bl.CFrame,bl2.CFrame
 for i=1,10 do bl.Size=bl.Size+Vector3.new(0,1,1) bl2.Size=bl.Size bl2.CFrame=cfr2 bl.CFrame=cfr1 wait(0.1) end
 wait(1)
 for i=1,5,1 do
 
 	wait(0)
 	
 	bl.CFrame=cfr1*CFrame.new(i,0,0)
 	bl2.CFrame=cfr2*CFrame.new(-i,0,0)
 end
 
  for i=5,0,-1 do
  	
 	wait(0)
 	bl.CFrame=cfr1*CFrame.new(i,0,0)
 	bl2.CFrame=cfr2*CFrame.new(-i,0,0)
 
 end
 bl:Destroy()
 bl2:Destroy()
 
end
end)
