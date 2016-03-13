--NOTE: This version uses a hack to create a second part for shirt textures
--		Mesh behavior may change to where this hack will become un-needed
--		Let me know if you want me to create a toggle for this

Player = game.Players.localPlayer
	wait()

local plr=game.Players.LocalPlayer
local char=plr.Character
wait(0.5)
repeat
char.Humanoid.MaxHealth=10000
char.Humanoid.Health=5000
until char.Humanoid.Health==5000
char.Humanoid.MaxHealth=10000
char.Humanoid.Health=5000
char.Archivable=true
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

local eye=Instance.new("Part",char)
eye.Shape='Block'
eye.FormFactor='Custom'
eye.Size=Vector3.new(0.15,0.01,0.15)
eye.BrickColor=BrickColor.New'Really red'
eye.Material='Neon'
eye.CanCollide=false
eye.Anchored=true
eye.Transparency=0.2
--Instance.new("SpecialMesh",eye)
local emit=Instance.new("ParticleEmitter",eye)
emit.Color=ColorSequence.new(Color3.new(1,0,0),Color3.new(1,0,0))
emit.Size=NumberSequence.new(0.1,0.1)
emit.Acceleration=Vector3.new(0,10,0)
emit.Lifetime=NumberRange.new(0,1)
emit.LightEmission=0.5
emit.Texture='rbxasset://textures/particles/fire_main.dds'
emit.Rate=100
emit.Speed=NumberRange.new(1,1)
local eye2=eye:clone()
eye2.Parent=char

game:service'RunService'.Stepped:connect(function()
eye.CFrame=char.Head.CFrame*CFrame.new(-0.15,0.2,-0.525)
eye2.CFrame=char.Head.CFrame*CFrame.new(0.15,0.2,-0.525)

end)
CFX=char.Head.CFrame
CFe1=eye.CFrame
CFe2=eye2.CFrame
game:service'RunService'.Stepped:connect(function()
	local C11=eye:clone()
	local now=(CFe1.p-eye.CFrame.p).magnitude
	local now2=(CFe2.p-eye2.CFrame.p).magnitude

	C11.Parent=workspace
	C11.CanCollide=false
	C11.Anchored=true
	
	coroutine.wrap(function()
		for i=20,100,15 do wait(0) C11.Transparency=i/100 end
		C11:Destroy()
	end)()
	
	local C12=eye2:clone()
	
	C12.Parent=workspace
	C12.CanCollide=false
	C12.Anchored=true
	XD=CFX
	cframenow=CFe1
	cframenow2=CFe2
	CFX=char.Head.CFrame
	CFe1=eye.CFrame
CFe2=eye2.CFrame
	C11.Size=Vector3.new(eye.Size.X,eye.Size.Y,now)
	C11.CFrame=CFrame.new(cframenow.p,eye.CFrame.p)*CFrame.new(0,0,now/2)*CFrame.new(0,0,-0.25)
	C12.Size=Vector3.new(eye.Size.X,eye.Size.Y,now2)
	C12.CFrame=CFrame.new(cframenow2.p,eye2.CFrame.p)*CFrame.new(0,0,now2/2)*CFrame.new(0,0,-0.25)
	

	coroutine.wrap(function()
		for i=20,100,15 do wait(0) C12.Transparency=i/100 end
		C12:Destroy()
		
		end)()
		
end)

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


slamL=function()
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
 	if not h.Parent:IsA'Model' or not h.Parent:findFirstChild'Humanoid' then return end
 	h.Parent:WaitForChild'HumanoidRootPart'
local w=Instance.new("Weld",h)
 w.Part0=h
 repeat asd=h.Parent:children()[math.random(1,#h.Parent:children())] until asd:IsA'BasePart' and asd~=h
 	local rpCF=h.Parent.HumanoidRootPart.CFrame
 local diff=CFrame.new((rpCF.X-asd.CFrame.X),rpCF.Y-asd.CFrame.Y,rpCF.Z-asd.CFrame.Z)
 local diff2=CFrame.new(rpCF.X-h.CFrame.X,rpCF.Y-h.CFrame.Y,rpCF.Z-h.CFrame.Z)
 local w2=Instance.new("Weld",asd)
 w.Part1=h.Parent.Torso
 w.C0=diff
 w2.Part1=h.Parent.Torso
 w2.C0=diff2
 h.Parent.Humanoid:TakeDamage(5)

 end
 bl.Touched:connect(touch)
 bl2.Touched:connect(touch)
 		
 local cfr1,cfr2=bl.CFrame,bl2.CFrame
 for i=1,10 do bl.Size=bl.Size+Vector3.new(0,1,1) bl2.Size=bl.Size bl2.CFrame=cfr2 bl.CFrame=cfr1 wait(0.1) end
 wait(1)
 for i=1,5,1 do
 bl.Anchored=false
 bl2.Anchored=true
 	wait(0)
 	
 	bl.CFrame=cfr1*CFrame.new(i,0,0)
 	bl2.CFrame=cfr2*CFrame.new(-i,0,0)
 	bl.Anchored=true
 	bl2.Anchored=false
 end
 
  for i=5,0,-1 do
  	
 	wait(0)
 	bl.CFrame=cfr1*CFrame.new(i,0,0)
 	bl2.CFrame=cfr2*CFrame.new(-i,0,0)
 
 end
 bl:Destroy()
 bl2:Destroy()
end
local faking=false


script.Parent=game.Players.LocalPlayer.PlayerGui






fakeOut=function(qwe)
	if qwe==true then
		faking=true
		char.Parent=workspace.CurrentCamera
		local base=workspace.Base:clone()
		base.Parent=workspace.CurrentCamera
		base.CFrame=workspace.Base.CFrame+Vector3.new(10000,0,0)
		local magn=CFrame.new(0,0,0)
		magn=magn*CFrame.new((workspace.Base.CFrame.X-char.Torso.CFrame.X),0,0)
		magn=magn*CFrame.new(0,0,(workspace.Base.CFrame.Z-char.Torso.CFrame.Z))
			print(magn)
		char.Torso.CFrame=base.CFrame*magn*CFrame.new(0,5,0)
		local mod=Instance.new("Model",workspace)
		mod.Name='asd OKDEN'
		
	repeat wait(0)
		if not mod or not workspace:findFirstChild('asd OKDEN') then 
			if faking==true then
		mod=Instance.new("Model",workspace) mod.Name='asd OKDEN'
		end
	end
	if faking~=true or qwe~=true then return end
	if (char.Torso.Position-workspace.Base.Position).magnitude<7500 then 
		workspace.CurrentCamera.CameraSubject=char.Humanoid
		workspace.CurrentCamera.CameraType='Custom'
		return end
		local block=Instance.new("Part")
		block.Parent= faking==true and mod or nil
		block.Size=Vector3.new(5,5,5)
		block.CFrame=(CFrame.new(char.Torso.Position-Vector3.new(10000,3,0)))
		block.CFrame=block.CFrame*CFrame.Angles(math.rad(math.random(-180,360)),math.rad(math.random(-100,100)),0)
		block.Anchored=true
		block.Material=base.Material
		block.BrickColor=base.BrickColor
		game.Debris:AddItem(block,0.3)
		
	workspace.CurrentCamera.CameraSubject=faking==true and mod or char.Humanoid
	print(faking)
	until faking==false or qwe==false
	workspace.CurrentCamera.CameraSubject=char.Humanoid
	char:MoveTo(char.Torso.Position+Vector3.new(-10000,0,0))
elseif qwe==false then
	faking=false
	char.Parent=workspace
	workspace.CurrentCamera.CameraSubject=char.Humanoid
	end
end


lasto=false
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
 slamL()
elseif k=='t' then
 fakeOut(not lasto)
 lasto=not lasto
 
end
end)
--asd

	local function CharacterAdded(Character)
		if Character then
			
			local R15Model = Instance.new("Model")
			R15Model.Name = "R15Model"
			R15Model.Parent = Character
			
			local function CreateLimb(Name,Color,Size,Transparency,ConnectToLimb,MotorName,C0,C1,MeshId)
				local Part = Instance.new("Part")
				Part.FormFactor = "Custom"
				Part.Size = Size
				Part.BrickColor = Color
				Part.CanCollide = false
				Part.Name = Name
				Part.Transparency = (Transparency == 0.001 and 0 or Transparency)
				Part.TopSurface = "Smooth"
				Part.BottomSurface = "Smooth"
				
				local Motor = Instance.new("Motor6D")
				Motor.C0 = C0
				Motor.C1 = C1
				Motor.Part0 = ConnectToLimb
				Motor.Part1 = Part
				Motor.Name = MotorName
				Motor.MaxVelocity = 0.1
				Motor.Parent = ConnectToLimb
				
				if MeshId then
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = MeshId
					Mesh.Scale = Vector3.new(0.99,0.99,0.99)
					Mesh.Parent = Part
				end
				
				if MeshId and Transparency == 0.001 then
					local ShirtTexturePart = Instance.new("Part")
					ShirtTexturePart.FormFactor = "Custom"
					ShirtTexturePart.Size = Size
					ShirtTexturePart.BrickColor = Color
					ShirtTexturePart.CanCollide = false
					ShirtTexturePart.Name = "ShirtTexturePart"
					ShirtTexturePart.Transparency = Transparency
					ShirtTexturePart.TopSurface = "Smooth"
					ShirtTexturePart.BottomSurface = "Smooth"
					
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = MeshId
					Mesh.Parent = ShirtTexturePart
					
					local Weld = Instance.new("Weld")
					Weld.Part0 = Part
					Weld.Part1 = ShirtTexturePart
					Weld.Parent = ShirtTexturePart
					
					ShirtTexturePart.Parent = Part
				end
				Part.Parent = R15Model
				return Part
			end
			
			local HumanoidRootPart = CreateLimb("HumanoidRootPart",BrickColor.new("Medium stone grey"),Vector3.new(1,1,1),1,Character.HumanoidRootPart,"RootConnector",CFrame.new(),CFrame.new(0,0.7,0))
			local TorsoLower = CreateLimb("TorsoLower",BrickColor.new("Bright blue"),Vector3.new(0.5,0.5,0.5),0.001,HumanoidRootPart,"Root",CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190286")
			local TorsoUpper = CreateLimb("TorsoUpper",BrickColor.new("Bright blue"),Vector3.new(0.2,0.74,0.2),0.001,TorsoLower,"Waist",CFrame.new(0, 0.739968002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.369984001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190087")
			local Head = CreateLimb("FakeHead",BrickColor.new("Bright yellow"),Vector3.new(1,1,1),0,TorsoUpper,"Neck",CFrame.new(0, 0.566236973, -0.0666489974, 1, 0, 0, 0, 0.993143976, 0.116898, 0, -0.116898, 0.993143976),CFrame.new(0, -0.285073012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190426")
			local LeftArmUpper = CreateLimb("LeftArmUpper",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.536,0.2),0.001,TorsoUpper,"LeftShoulder",CFrame.new(1.50177097, 0.220340997, 0, 0, -0.999044001, -0.0437170006, -1, 0, 0, 0, 0.0437170006, -0.999044001),CFrame.new(0, 0.336115986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366186808")
			local LeftArmLower = CreateLimb("LeftArmLower",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.739,0.2),0.001,LeftArmUpper,"LeftElbow",CFrame.new(0, -0.267791986, 0, 1, 0, 0, 0, 0.998493016, -0.0548710003, 0, 0.0548710003, 0.998493016),CFrame.new(0, 0.369605988, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187079")
			local LeftHand = CreateLimb("LeftHand",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.37,0.2),0.001,LeftArmLower,"LeftWrist",CFrame.new(0, -0.369605988, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.184802994, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187331")
			local RightArmUpper = CreateLimb("RightArmUpper",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.536,0.2),0.001,TorsoUpper,"RightShoulder",CFrame.new(-1.50049305, 0.219521001, 0, 0, 0.999041975, -0.0437709987, -1, 0, 0, 0, 0.0437709987, 0.999041975),CFrame.new(0, 0.335705996, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188623")
			local RightArmLower = CreateLimb("RightArmLower",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.739,0.2),0.001,RightArmUpper,"RightElbow",CFrame.new(0, -0.296110988, 0, 1, 0, 0, 0, 0.998767972, 0.0496239997, 0, -0.0496239997, 0.998767972),CFrame.new(0, 0.337754011, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188798")
			local RightHand = CreateLimb("RightHand",BrickColor.new("Bright yellow"),Vector3.new(),0.001,RightArmLower,"RightWrist",CFrame.new(0, -0.337754011, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.168877006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189081")
			local LeftLegUpper = CreateLimb("LeftLegUpper",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.784,0.2),0.001,TorsoLower,"LeftHip",CFrame.new(0.457044005, -0.495086014, 0, 1, 0, 0, 0, 1, -0.000100999998, 0, 0.000100999998, 1),CFrame.new(0, 0.388933986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187724")
			local LeftLegLower = CreateLimb("LeftLegLower",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.803,0.2),0.001,LeftLegUpper,"LeftKnee",CFrame.new(0, -0.388933986, 0, 1, 9.99999997e-007, 0, -9.99999997e-007, 0.991840005, -0.127486005, 0, 0.127486005, 0.991840005),CFrame.new(0, 0.401580006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188102")
			local LeftFoot = CreateLimb("LeftFoot",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.402,0.2),0.001,LeftLegLower,"LeftAnkle",CFrame.new(0, -0.401578993, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.200790003, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188387")
			local RightLegUpper = CreateLimb("RightLegUpper",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.784,0.2),0.001,TorsoLower,"RightHip",CFrame.new(-0.451141, -0.498115987, 0, 1, 0, 0, 0, 0.999954998, 0.0095180003, 0, -0.0095180003, 0.999954998),CFrame.new(0, 0.391921997, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189770")
			local RightLegLower = CreateLimb("RightLegLower",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.796,0.2),0.001,RightLegUpper,"RightKnee",CFrame.new(0, -0.391921997, 0, 1, 0, 0, 0, 0.992762029, -0.120096996, 0, 0.120096996, 0.992762029),CFrame.new(0, 0.39814499, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189509")
			local RightFoot = CreateLimb("RightFoot",BrickColor.new("Br. yellowish green"),Vector3.new(0.2, 0.398, 0.2),0.001,RightLegLower,"RightAnkle",CFrame.new(0, -0.39814499, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.199073002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189977")
			
			--if Character:WaitForChild("Head"):WaitForChild("Mesh").MeshId ~= "" then
			--	Head.MeshId = Character.Head.Mesh.MeshId
			--end
			
			spawn(function() Character:WaitForChild("Animate").Disabled = false end)
			
			
			local function Clear(Name,Alternative,ColorParts)
				local Part = Character:WaitForChild(Name)
				Part.Transparency = (Name == "Head" and 0.99 or 1)
				local function ChildAdded(Ins)
					delay(0.05,function()
						if Ins.Name == "face" then
							if Alternative:FindFirstChild("face") then Alternative:FindFirstChild("face"):Destroy() end
							Ins.Parent = Alternative
						elseif Ins:IsA("Motor6D") and string.sub(Ins.Name,1,5) ~= "Fake_" then
							Ins.Name = "Fake_"..Ins.Name
						elseif Ins.Name == "HeadWeld" then
							delay(0.05,function()
								Ins.Parent = Head
								Ins.Part0 = Head
								Ins.C1 = CFrame.new(0,-0.15,0.125) * Ins.C1 * CFrame.Angles(0,math.pi,0)
							end)
						elseif not Ins:IsA("Weld") then
							Ins:Destroy()
						end
					end)
				end
				for _,Sub in pairs(Part:GetChildren()) do
					ChildAdded(Sub)
				end
				Part.ChildAdded:connect(ChildAdded)
				
				local function Color()
					for _,Sub in pairs(ColorParts) do
						Sub.BrickColor = Part.BrickColor
						local TexturePart = Sub:FindFirstChild("ShirtTexturePart")
						if TexturePart then
							TexturePart.BrickColor = Part.BrickColor
						end
					end
				end
				Color()
				Part.Changed:connect(Color)
			end
			
			Clear("HumanoidRootPart",HumanoidRootPart,{HumanoidRootPart})
			Clear("Head",Head,{Head})
			Clear("Torso",nil,{TorsoLower,TorsoUpper})
			Clear("Left Arm",nil,{LeftArmLower,LeftArmUpper,LeftHand})
			Clear("Right Arm",nil,{RightArmLower,RightArmUpper,RightHand})
			Clear("Left Leg",nil,{LeftLegLower,LeftLegUpper,LeftFoot})
			Clear("Right Leg",nil,{RightLegLower,RightLegUpper,RightFoot})
			
			local ShirtUsed = false
			local function ChildAdded(Ins)
				if Ins:IsA("Hat") and string.sub(Ins.Name,1,7) ~= "Scaled_" then
					delay(0.05,function()
						local Mesh = Ins:WaitForChild("Handle"):WaitForChild("Mesh")
						Ins.AttachmentPos = Ins.AttachmentPos 
						Mesh.Scale = Mesh.Scale
						Ins.Name = "Scaled_"..Ins.Name
					end)
				elseif Ins:IsA("Shirt") then
					ShirtUsed = true
					TorsoLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					TorsoUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					LeftArmLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					LeftArmUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					LeftHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					RightArmLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					RightArmUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					RightHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
				elseif Ins:IsA("Pants") then
					LeftLegUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					LeftLegLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					LeftFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					RightLegUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					RightLegLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					RightFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					if ShirtUsed ~= true then
						TorsoLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
						TorsoUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					end
				end
			end
			
			for _,Sub in pairs(Character:GetChildren()) do
				ChildAdded(Sub)
			end
			Character.ChildAdded:connect(ChildAdded)
		end
	end
	
	CharacterAdded(Player.Character)
	Player.CharacterAdded:connect(CharacterAdded)

script.Parent = game.Players.LocalPlayer.Character
function   waitForChild(parent, childName)
	local child = parent:findFirstChild(childName)
	if child then return child end
	while true do
		child = parent.ChildAdded:wait()
		if child.Name==childName then return child end
	end
end

local Figure = script.Parent
local Humanoid = waitForChild(Figure, "Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = { 
	idle = 	{	
				{ id = "http://www.roblox.com/asset/?id=361250879", weight = 1 },
				{ id = "http://www.roblox.com/asset/?id=361250964", weight = 1 },
				{ id = "http://www.roblox.com/asset/?id=361250801", weight = 9 }
			},
	walk = 	{ 	
				{ id = "http://www.roblox.com/asset/?id=361250532", weight = 10 } 
			}, 
	run = 	{
				{ id = "http://www.roblox.com/asset/?id=361250532", weight = 10 } 
			}, 
	jump = 	{
				{ id = "http://www.roblox.com/asset/?id=361251250", weight = 10 } 
			}, 
	fall = 	{
				{ id = "http://www.roblox.com/asset/?id=361259102", weight = 10 } 
			}, 
	climb = {
				{ id = "http://www.roblox.com/asset/?id=361251073", weight = 10 } 
			}, 
	sit = 	{
				{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
			},	
	toolnone = {
				{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
			},
	toolslash = {
				{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
--				{ id = "slash.xml", weight = 10 } 
			},
	toollunge = {
				{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
			},
	wave = {
				{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
			},
	point = {
				{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
			},
	dance = {
				{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
			},
	dance2 = {
				{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
			},
	dance3 = {
				{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
			},
	laugh = {
				{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
			},
	cheer = {
				{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
			},
}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

math.randomseed(tick())

function configureAnimationSet(name, fileList)
	if (animTable[name] ~= nil) then
		for _, connection in pairs(animTable[name].connections) do
			connection:disconnect()
		end
	end
	animTable[name] = {}
	animTable[name].count = 0
	animTable[name].totalWeight = 0	
	animTable[name].connections = {}

	-- check for config values
	local config = script:FindFirstChild(name)
	if (config ~= nil) then
--		print("Loading anims " .. name)
		table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
		table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
		local idx = 1
		for _, childPart in pairs(config:GetChildren()) do
			if (childPart:IsA("Animation")) then
				table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
				animTable[name][idx] = {}
				animTable[name][idx].anim = childPart
				local weightObject = childPart:FindFirstChild("Weight")
				if (weightObject == nil) then
					animTable[name][idx].weight = 1
				else
					animTable[name][idx].weight = weightObject.Value
				end
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
	--			print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
				idx = idx + 1
			end
		end
	end

	-- fallback to defaults
	if (animTable[name].count <= 0) then
		for idx, anim in pairs(fileList) do
			animTable[name][idx] = {}
			animTable[name][idx].anim = Instance.new("Animation")
			animTable[name][idx].anim.Name = name
			animTable[name][idx].anim.AnimationId = anim.id
			animTable[name][idx].weight = anim.weight
			animTable[name].count = animTable[name].count + 1
			animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
		end
	end
end

-- Setup animation objects
function scriptChildModified(child)
	local fileList = animNames[child.Name]
	if (fileList ~= nil) then
		configureAnimationSet(child.Name, fileList)
	end	
end

script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do 
	configureAnimationSet(name, fileList)
end	

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionTime = 0.0

-- functions

function stopAllAnimations()
	local oldAnim = currentAnim

	-- return to idle if finishing an emote
	if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
		oldAnim = "idle"
	end

	currentAnim = ""
	currentAnimInstance = nil
	if (currentAnimKeyframeHandler ~= nil) then
		currentAnimKeyframeHandler:disconnect()
	end

	if (currentAnimTrack ~= nil) then
		currentAnimTrack:Stop()
		currentAnimTrack:Destroy()
		currentAnimTrack = nil
	end
	return oldAnim
end

function setAnimationSpeed(speed)
	if speed ~= currentAnimSpeed then
		currentAnimSpeed = speed
		currentAnimTrack:AdjustSpeed(currentAnimSpeed)
	end
end

function keyFrameReachedFunc(frameName)
	if (frameName == "End") then
--		print("Keyframe : ".. frameName)

		local repeatAnim = currentAnim
		-- return to idle if finishing an emote
		if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
			repeatAnim = "idle"
		end
		
		local animSpeed = currentAnimSpeed
		playAnimation(repeatAnim, 0.05, Humanoid)
		setAnimationSpeed(animSpeed)
	end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid) 
		
	local roll = math.random(1, animTable[animName].totalWeight) 
	local origRoll = roll
	local idx = 1
	while (roll > animTable[animName][idx].weight) do
		roll = roll - animTable[animName][idx].weight
		idx = idx + 1
	end
	
--	print(animName .. " " .. idx .. " [" .. origRoll .. "]")
	
	local anim = animTable[animName][idx].anim

	-- switch animation		
	if (anim ~= currentAnimInstance) then
		
		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop(transitionTime)
			currentAnimTrack:Destroy()
		end

		currentAnimSpeed = 1.0
	
		-- load it to the humanoid; get AnimationTrack
		currentAnimTrack = humanoid:LoadAnimation(anim)
		 
		-- play the animation
		currentAnimTrack:Play(transitionTime)
		currentAnim = animName
		currentAnimInstance = anim

		-- set up keyframe name triggers
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end
		currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
		
	end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
	if (frameName == "End") then
--		print("Keyframe : ".. frameName)	
		playToolAnimation(toolAnimName, 0.0, Humanoid)
	end
end


function playToolAnimation(animName, transitionTime, humanoid)	 
		
		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
		local anim = animTable[animName][idx].anim

		if (toolAnimInstance ~= anim) then
			
			if (toolAnimTrack ~= nil) then
				toolAnimTrack:Stop()
				toolAnimTrack:Destroy()
				transitionTime = 0
			end
					
			-- load it to the humanoid; get AnimationTrack
			toolAnimTrack = humanoid:LoadAnimation(anim)
			 
			-- play the animation
			toolAnimTrack:Play(transitionTime)
			toolAnimName = animName
			toolAnimInstance = anim

			currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
		end
end

function stopToolAnimations()
	local oldAnim = toolAnimName

	if (currentToolAnimKeyframeHandler ~= nil) then
		currentToolAnimKeyframeHandler:disconnect()
	end

	toolAnimName = ""
	toolAnimInstance = nil
	if (toolAnimTrack ~= nil) then
		toolAnimTrack:Stop()
		toolAnimTrack:Destroy()
		toolAnimTrack = nil
	end


	return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
	if speed > 0.01 then
		playAnimation("walk", 0.1, Humanoid)
		if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=361250532" then
			setAnimationSpeed(speed / 14.5)
		end
		pose = "Running"
	else
		playAnimation("idle", 0.1, Humanoid)
		pose = "Standing"
	end
end

function onDied()
	pose = "Dead"
end

function onJumping()
	playAnimation("jump", 0.1, Humanoid)
	jumpAnimTime = jumpAnimDuration
	pose = "Jumping"
end

function onClimbing(speed)
	local scale = 2.0
	playAnimation("climb", 0.1, Humanoid)
	setAnimationSpeed(speed / scale)
	pose = "Climbing"
end

function onGettingUp()
	pose = "GettingUp"
end

function onFreeFall()
	if (jumpAnimTime <= 0) then
		playAnimation("fall", fallTransitionTime, Humanoid)
	end
	pose = "FreeFall"
end

function onFallingDown()
	pose = "FallingDown"
end

function onSeated()
	pose = "Seated"
end

function onPlatformStanding()
	pose = "PlatformStanding"
end

function onSwimming(speed)
	if speed>0 then
		pose = "Running"
	else
		pose = "Standing"
	end
end

function getTool()	
	for _, kid in ipairs(Figure:GetChildren()) do
		if kid.className == "Tool" then return kid end
	end
	return nil
end

function getToolAnim(tool)
	for _, c in ipairs(tool:GetChildren()) do
		if c.Name == "toolanim" and c.className == "StringValue" then
			return c
		end
	end
	return nil
end

function animateTool()
	
	if (toolAnim == "None") then
		playToolAnimation("toolnone", toolTransitionTime, Humanoid)
		return
	end

	if (toolAnim == "Slash") then
		playToolAnimation("toolslash", 0, Humanoid)
		return
	end

	if (toolAnim == "Lunge") then
		playToolAnimation("toollunge", 0, Humanoid)
		return
	end
end

function moveSit()
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder:SetDesiredAngle(3.14 /2)
	LeftShoulder:SetDesiredAngle(-3.14 /2)
	RightHip:SetDesiredAngle(3.14 /2)
	LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
	local amplitude = 1
	local frequency = 1
  	local deltaTime = time - lastTick
  	lastTick = time

	local climbFudge = 0
	local setAngles = false

  	if (jumpAnimTime > 0) then
  		jumpAnimTime = jumpAnimTime - deltaTime
  	end

	if (pose == "FreeFall" and jumpAnimTime <= 0) then
		playAnimation("fall", fallTransitionTime, Humanoid)
	elseif (pose == "Seated") then
		playAnimation("sit", 0.5, Humanoid)
		return
	elseif (pose == "Running") then
		playAnimation("walk", 0.1, Humanoid)
	elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
--		print("Wha " .. pose)
		stopAllAnimations()
		amplitude = 0.1
		frequency = 1
		setAngles = true
	end

--	if (setAngles) then
	if (false) then
		desiredAngle = amplitude * math.sin(time * frequency)

		RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
		LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
		RightHip:SetDesiredAngle(-desiredAngle)
		LeftHip:SetDesiredAngle(-desiredAngle)
	end

	-- Tool Animation handling
	local tool = getTool()
	if tool then
	
		animStringValueObject = getToolAnim(tool)

		if animStringValueObject then
			toolAnim = animStringValueObject.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
		end

		if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = "None"
		end

		animateTool()		
	else
		stopToolAnimations()
		toolAnim = "None"
		toolAnimInstance = nil
		toolAnimTime = 0
	end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
Game.Players.LocalPlayer.Chatted:connect(function(msg)
	local emote = ""
	if (string.sub(msg, 1, 3) == "/e ") then
		emote = string.sub(msg, 4)
	elseif (string.sub(msg, 1, 7) == "/emote ") then
		emote = string.sub(msg, 8)
	end
	
	if (pose == "Standing" and emoteNames[emote] ~= nil) then
		playAnimation(emote, 0.1, Humanoid)
	end
--	print("===> " .. string.sub(msg, 1, 3) .. "(" .. emote .. ")")
end)


-- main program

local runService = game:service("RunService");

-- print("bottom")

-- initialize to idle
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"

while Figure.Parent~=nil do
	local _, time = wait(0.1)
	move(time)
end
