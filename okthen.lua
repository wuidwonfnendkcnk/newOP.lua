FlagSystem.GiveFlag = function(self, flag, plr)
	Info[flag].Holder = plr
if flag:findFirstChild('FlagWeld') then
flag['FlagWeld']:Destroy()
--weld flag 2 hand now, unless u is usin a Flag object, in which case youll just grab eet
end
end

FlagSystem.CaptureFlag = function(self, flag, stand, team)
	Info[flag].Holder = nil
	Info[flag].Possession = team
	flag.Parent=stand
local w=Instance.new("Weld",flag)
w.Part0 = --i am bad with welds
w.Part1 = --i am bad with welds
w.Name='StandWeld'
w.C0 = --see two/one lines above.
end

FlagSystem.GetInfo = function(self, flag)
	return Info[flag]
end
