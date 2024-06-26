local WW = Mephisto
WW.zones["ICP"] = {}
local ICP = WW.zones["ICP"]

ICP.name = GetString(MP_ICP_NAME)
ICP.tag = "ICP"
ICP.icon = "/esoui/art/icons/achievement_ic_025_heroic.dds"
ICP.priority = 101
ICP.id = 678
ICP.node = 236

ICP.bosses = {
	[1] = {
		name = GetString(MP_TRASH),
	},
	[2] = {
		name = GetString(MP_ICP_IBOMEZ_THE_FLESH_SCULPTOR),
	},
	[3] = {
		name = GetString(MP_ICP_FLESH_ABOMINATION),
	},
	[4] = {
		name = GetString(MP_ICP_LORD_WARDEN_DUSK),
	},
}

function ICP.Init()

end

function ICP.Reset()

end

function ICP.OnBossChange(bossName)
	if #bossName == 0 then
		bossName = GetString(MP_TRASH)
	end

	local pageId = WW.selection.pageId
	local index = ICP.lookupBosses[bossName]
	WW.LoadSetup(ICP, pageId, index, true)
end
