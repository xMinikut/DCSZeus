--Need unit with late activation call MOOSERED

local TMP_TEMPLATES = {
    [1] = {
        ["unit"] = "T-55",
        ["name"] = "T-55"
    },
    [2] = {
        ["unit"] = "T-90",
        ["name"] = "T-90"
    },
    [3] = {
        ["unit"] = "M-1 Abrams",
        ["name"] = "M-1"
    },
    [4] = {
        ["unit"] = "M-109",
        ["name"] = "M-109"
    },
    [5] = {
        ["unit"] = "T-80UD",
        ["name"] = "T-80"
    },

    [6] = {
        ["unit"] = "T-72B",
        ["name"] = "T-72"
    },

    [7] = {
        ["unit"] = "Vulcan",
        ["name"] = "Vulcan"
    },

    [8] = {
        ["unit"] = "Soldier RPG",
        ["name"] = "RPG"
    },

    [9] = {
        ["unit"] = "Ural-375 ZU-23",
        ["name"] = "ZU23"
    },

    [10] = {
        ["unit"] = "ZSU-23-4 Shilka",
        ["name"] = "ZSU23"
    },

    [11] = {
        ["unit"] = "Tor 9A331",
        ["name"] = "SA-15"
    },

    [12] = {
        ["unit"] = "Strela-10M3",
        ["name"] = "SA-13"
    },

    [13] = {
        ["unit"] = "Strela-1 9P31",
        ["name"] = "SA-9"
    },

    [14] = {
        ["unit"] = "SA-8 Osa LD 9T217",
        ["name"] = "SA-8"
    },

    [15] = {
        ["unit"] = "Ural-375",
        ["name"] = "Ural"
    },

    [16] = {
        ["unit"] = "Smerch",
        ["name"] = "Smerch"
    },

	[17] = {
        ["unit"] = "Soldier AK",
        ["name"] = "AK"
    },
	[18] = {
        ["unit"] = "BMP-3",
        ["name"] = "BMP-3"
    },
	[19] = {
        ["unit"] = "BTR-80",
        ["name"] = "BTR-80"
    },
	[20] = {
        ["unit"] = "Ural-4320T",
        ["name"] = "Ural-4320T"
    },
	[21] = {
        ["unit"] = "Ural-4320-31",
        ["name"] = "Ural-4320-31"
    },
	[22] = {
        ["unit"] = "HL_KORD",
        ["name"] = "HL_KORD"
    },
	[23] = {
        ["unit"] = "Tigr_233036",
        ["name"] = "Tigr"
    },
	[24] = {
        ["unit"] = "SA-18 Igla-S manpad",
        ["name"] = "SA-18"
    },
	
	
	
	
	
}





ZeusMod = {}

do
    function ZeusMod:New()
        local obj = {}  
        setmetatable(obj,  {__index = self})
		obj.templates = templates or TMP_TEMPLATES
		obj.needPassword = false
		obj.passwordDone = false
		obj.password = ''
		obj.groupSpawn = {}
		obj.randomPos = false
		obj.groupNbr = 0
		obj.coalition = nil
		obj.destination = nil
		obj.marks = {}
		obj.marksIDs = {}
		obj.markID = 10000
		obj.turnOffReco = false
		obj.zones = {}
		obj.defineZone = ""
		self.zonesMenu = {}
        return obj
    end

	function ZeusMod:AddZone(zoneName, codeName, Menu)
		self.zones[codeName] = ZONE:FindByName(zoneName)
		-- self.zonesMenu[Menu] = {zoneName = zoneName, menu = Menu, codeName = codeName}
		self.zonesMenu[codeName] = zoneName
	end

	function ZeusMod:UsePassword(pwd)
		self.needPassword = true 
		self.password = pwd
	end


	function ZeusMod:Split(s, delimiter)
		local result = {};
		for match in (s..delimiter):gmatch("(.-)"..delimiter) do
			table.insert(result, match);
		end
		return result;
	end

	function ZeusMod:CreateTemplate()
		for i, datas in ipairs(self.templates) do 
			env.info(datas.unit, false)
			local trueTemplate = {
				["task"] = {},
				["units"] = 
				{
					[1] = 
					{
						["type"] = datas.unit,
						["y"] = 0,
						["x"] = 0,
						["name"] = "Z_" .. datas.name,  
					}, -- end of [1]
				},
				["name"] = "Z_" .. datas.name,  
				["y"] = 0,
				["x"] = 0,
			}
			GROUP:NewTemplate(trueTemplate, coalition.side.RED, Group.Category.GROUND, country.id.RUSSIA)     
		end
	end

	function ZeusMod:Init()
		self:CreateTemplate()
		self:DefineMenu()
        world.addEventHandler(self)
		env.info("Zeus Init", false)

	end

	function ZeusMod:defineZoneFromMenu(codename)
		if (codename ~= nil) then 
			env.info("define : " .. tostring(codename))
			self.defineZone = codename
			env.info("define 2 : " .. tostring(self.zonesMenu[codename]))
			trigger.action.outText("Utilisez la command 'zone' pour déclancher le spawn dans la zone "..tostring(self.zonesMenu[codename]), 20)
		end
	end

	function ZeusMod:DefineMenu()
		if (self.zonesMenu ~= {}) then 
			local menuSpawn = missionCommands.addSubMenu("Spawn in zone", nil)
			for codeName, zoneName in pairs(self.zonesMenu) do
				missionCommands.addCommand(  
					"Zone "..zoneName,
					menuSpawn,
					self.defineZoneFromMenu,
					self, codeName
				)
			end
		end


	end

	
    function ZeusMod:SpawnEditorUnit(groupName, pos)

		local coord = COORDINATE:NewFromVec3(pos)
		self.groupNbr = self.groupNbr + 1

		local spawnTmp = SPAWN:NewWithAlias(groupName, groupName .. "_" .. tostring(self.groupNbr)):OnSpawnGroup(
			function(mooseGroup)
				self.groupSpawn[mooseGroup] = mooseGroup
			end
		):InitCoalition(self.coalition)

		if (self.randomPos) then 
			spawnTmp = spawnTmp:InitRandomizePosition(true, 100)
		end
		if (self.coalition == coalition.side.RED) then --red
			spawnTmp = spawnTmp:InitCountry(country.id.RUSSIA)
		else 
			spawnTmp = spawnTmp:InitCountry(country.id.USA)
		end
		spawnTmp:SpawnFromVec2(coord:GetVec2())
    end

	function ZeusMod:AddSpecificGroup(pos, cmds) 
		if (cmds[2] == nil) then return end

		local groupName = cmds[2]
		self:DefineCoalition(cmds[3])
			
		if(groupName == "SA2") then 		
			self:Spawn("SA2_ZEUS", pos)		
		elseif(groupName == "SA3") then 	
			self:Spawn("SA3_ZEUS", pos)		
		elseif(groupName == "SA6") then 	
			self:Spawn("SA6_ZEUS", pos)		
		elseif(groupName == "SA10") then 	
			self:Spawn("SA10_ZEUS", pos)		
		elseif(groupName == "SA11") then 	
			self:Spawn("SA11_ZEUS", pos)		
		elseif(groupName == "SA5") then 	
			self:Spawn("SA5_ZEUS", pos)		
		elseif(groupName == "FOB1") then
			self:SpawnStaticUnit("FOB", pos)
		elseif(groupName == "LARGEFOB") then 
			self:SpawnStaticUnit("LARGEFOB", pos)
		elseif(groupName == "MEDIUMFOB") then 
			self:SpawnStaticUnit("MEDIUMFOB", pos)
		else
			local nbr = tonumber(cmds[4]) or 1
			self.randomPos = nbr > 1
			for i = 1,  nbr do
				self:Spawn("Z_" .. groupName, pos)
			end
		end
		trigger.action.outText("Spawn groupe", 10)
		
	end

	function ZeusMod:Spawn(groupName, pos)
		env.info("Spawn")
		env.info("coalition : " .. tostring(self.coalition))

		local coord = COORDINATE:NewFromVec3(pos)
		self.groupNbr = self.groupNbr + 1
		local spawnTmp = SPAWN:NewWithAlias("MOOSERED", groupName .. "_" ..tostring(self.groupNbr)):InitRandomizeTemplate({groupName}):OnSpawnGroup(
			function(mooseGroup)
				self.groupSpawn[mooseGroup] = mooseGroup
			end
		):InitCoalition(self.coalition)


		if (self.randomPos) then 
			spawnTmp = spawnTmp:InitRandomizePosition(true, 100)
		end

		if (self.coalition == coalition.side.RED) then --red
			spawnTmp = spawnTmp:InitCountry(country.id.RUSSIA)
		else 
			spawnTmp = spawnTmp:InitCountry(country.id.USA)
		end

		spawnTmp:SpawnFromVec2(coord:GetVec2())
	end
	
	function ZeusMod:SpawnStaticFOB(pos)
		local coord = COORDINATE:NewFromVec3(pos)
		local POINT = POINT_VEC2:NewFromVec2(coord:GetVec2())

		SPAWNSTATIC:InitType(".Ammunition depot")
		:InitNamePrefix("Depot")
		:InitShape("SkladC")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT, 90)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("Bunker")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(83, 236, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank01")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(40, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank01")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(40, 180):GetVec2()), 0)
	end


	function ZeusMod:SpawnStaticLARGEFOB(pos) 
		local coord = COORDINATE:NewFromVec3(pos)
		local POINT = POINT_VEC2:NewFromVec2(coord:GetVec2())


		SPAWNSTATIC:InitType("Invisible FARP")
		:InitNamePrefix("farpInv")
		:InitShape("invisiblefarp")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT, 90)



		SPAWNSTATIC:InitType("house2arm")
		:InitNamePrefix("Tour1")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(415, 218, false, true):GetVec2()), 0)


		SPAWNSTATIC:InitType("house2arm")
		:InitNamePrefix("Tour2")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(520, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("house2arm")
		:InitNamePrefix("Tour3")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(650, 0, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("house2arm")
		:InitNamePrefix("Tour4")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(520, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP1")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(120, 121, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP2")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP3")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP4")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP5")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP6")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP7")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP8")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(40, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP9")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP10")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP11")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP12")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP13")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP14")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP15")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(40, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP16")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP17")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP18")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP19")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP20")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP21")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 90, false, true):GetVec2()), 0)




		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP22")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(40, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP23")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP24")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP25")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP26")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP27")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Tent")
		:InitNamePrefix("FARP28")
		:InitShape("PalatkaB")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(20, 270, false, true):GetVec2()), 0)





		SPAWNSTATIC:InitType("Tech hangar A")
		:InitNamePrefix("Hangar1")
		:InitShape("ceh_ang_a")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(80, 200, false, true):GetVec2()), 0)
		--:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(130, 205, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tech hangar A")
		:InitNamePrefix("Hangar2")
		:InitShape("ceh_ang_a")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(60, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tech hangar A")
		:InitNamePrefix("Hangar3")
		:InitShape("ceh_ang_a")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(60, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("Bunker1")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(25, 60, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("Bunker2")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(31, 0, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("Bunker3")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(31, 0, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("Bunker4")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(31, 0, false, true):GetVec2()), 0)
		
		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank1")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(280, 189, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank2")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(30, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank3")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(30, 90, false, true):GetVec2()), 0)


		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank4")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(40, 0, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank5")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(30, 270, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Tank")
		:InitNamePrefix("Tank6")
		:InitShape("bak")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(30, 270, false, true):GetVec2()), 0)



		SPAWNSTATIC:InitType("FARP Fuel Depot")
		:InitNamePrefix("fuel1")
		:InitShape("GSM Rus")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(17, 31, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Fuel Depot")
		:InitNamePrefix("fuel2")
		:InitShape("GSM Rus")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(9, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Fuel Depot")
		:InitNamePrefix("fuel3")
		:InitShape("GSM Rus")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(9, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Fuel Depot")
		:InitNamePrefix("fuel4")
		:InitShape("GSM Rus")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(9, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Fuel Depot")
		:InitNamePrefix("fuel5")
		:InitShape("GSM Rus")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(9, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Fuel Depot")
		:InitNamePrefix("fuel6")
		:InitShape("GSM Rus")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(9, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType(".Ammunition depot")
		:InitNamePrefix("Ammo1")
		:InitShape("SkladC")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(350, 90, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType(".Ammunition depot")
		:InitNamePrefix("Ammo2")
		:InitShape("SkladC")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(45, 180, false, false):GetVec2()), 0)

		SPAWNSTATIC:InitType(".Ammunition depot")
		:InitNamePrefix("Ammo3")
		:InitShape("SkladC")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(45, 0, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Ammo Dump Coating")
		:InitNamePrefix("AmmoCam1")
		:InitShape("SetkaKP")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(73, 290, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Ammo Dump Coating")
		:InitNamePrefix("AmmoCam2")
		:InitShape("SetkaKP")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(12, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("BunkerCam1")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(12, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Ammo Dump Coating")
		:InitNamePrefix("AmmoCam2")
		:InitShape("SetkaKP")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(32, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Ammo Dump Coating")
		:InitNamePrefix("AmmoCam3")
		:InitShape("SetkaKP")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(12, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("BunkerCam2")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(12, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Ammo Dump Coating")
		:InitNamePrefix("AmmoCam5")
		:InitShape("SetkaKP")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(32, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("FARP Ammo Dump Coating")
		:InitNamePrefix("AmmoCam6")
		:InitShape("SetkaKP")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(12, 180, false, true):GetVec2()), 0)

		SPAWNSTATIC:InitType("Bunker")
		:InitNamePrefix("BunkerCam3")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(12, 180, false, true):GetVec2()), 0)



		SPAWNSTATIC:InitType("Comms tower M")
		:InitNamePrefix("Tower1")
		:InitShape("tele_bash_m")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(343, 14, false, true):GetVec2()), 0)


		SPAWNSTATIC:InitType(".Command Center")
		:InitNamePrefix("Center1")
		:InitShape("ComCenter")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(140, 315, false, true):GetVec2()), 0)



	end


	function ZeusMod:SpawnStaticUnit(staticName, pos)
		if (staticName == "FOB") then self:SpawnStaticFOB(pos) end
		if (staticName == "LARGEFOB") then self:SpawnStaticLARGEFOB(pos) end
		if (staticName == "MEDIUMFOB") then self:SpawnStaticMEDIUMFOB(pos) end

	end

	function ZeusMod:SpawnStaticMEDIUMFOB(pos)
		local coord = COORDINATE:NewFromVec3(pos)
		local POINT = POINT_VEC2:NewFromVec2(coord:GetVec2())


		SPAWNSTATIC:InitType("Invisible FARP")
		:InitNamePrefix("farpInv")
		:InitShape("invisiblefarp")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT, 90)



		SPAWNSTATIC:InitType("house2arm")
		:InitNamePrefix("Tour1")
		:InitCountry(country.id.RUSSIA)
		:SpawnFromPointVec2(POINT_VEC2:NewFromVec2(coord:Translate(415, 218, false, true):GetVec2()), 0)


	end

	function ZeusMod:Remove(pos, cmds)
		if (cmds[2] == "all") then 
			self:RemoveAll()
		end
	end


	function ZeusMod:RemoveAll()
		for index, units in pairs(self.groupSpawn) do
			if (units and units:IsAlive()) then 
				env.info(tostring(units:GetName()), false)
				Group.getByName(units:GetName()):destroy()		
			end
		end
		self.groupSpawn = {}
		self.groupNbr = 0
		trigger.action.outText("Suppression des unités", 10)
	end


	function ZeusMod:AddGroup(pos, cmds) 
		env.info("slot : " .. tostring(cmds[2]), false)
		if (cmds[2] == nil) then return end
		self:DefineCoalition(cmds[3])
		self:SpawnEditorUnit(cmds[2],  pos)
		trigger.action.outText("Groupe " .. tostring(cmds[2]) .. " spawn", 10)
	end

	function ZeusMod:Explode(pos, cmds) 
		local detonator = cmds[2] or 5
		local power = cmds[3] or 1000000
		timer.scheduleFunction(
			function(time) 
				trigger.action.explosion(pos, power)
			end, 
			nil, timer.getTime() + detonator
		)
		trigger.action.outText("Explosion", 10)
	end

	function ZeusMod:DefineCoalition(value)
		self.coalition = coalition.side.RED
		if (value ~= nil and value ~= "" ) then 
			if value == "1" then self.coalition = coalition.side.RED else self.coalition = coalition.side.BLUE end
		end
	end

	function ZeusMod:AddConvoy(pos, cmds) 
		local conv = Convoy:New(self.templates)
		self:DefineCoalition(cmds[4])
		conv:SpawnGroup({
			type  = cmds[2],
			coalition = self.coalition,
			pos  = pos,
			name = cmds[3],
			destination = self.destination
		})
	end

	function ZeusMod:RemoveMark(unitName)
		if (self.marks[unitName]) then 
			trigger.action.removeMark(self.marks[unitName])
			self.marks[unitName] = nil
		end
	end

	function ZeusMod:AddMark(obj)
		if (self.marks[obj.name] ~= nil) then 
			self:RemoveMark(obj.name)
		end

		self.markID = self.markID + 1 
		trigger.action.markToAll( self.markID , obj.text, obj.position , false)
		self.marks[obj.name] = self.markID
		self.marksIDs[self.markID] = obj.name
	end 

	function ZeusMod:ExecReco(pos, cmds)
		trigger.action.outText("Reconnaissance en cours...", 20)
		local radius = cmds[2] or 4000

        local searchVolume = {
            ["id"] = world.VolumeType.SPHERE,
            ["params"] = {
                ["point"] = pos,
                ["radius"] = radius,
            }
        }

        world.searchObjects(Object.Category.UNIT, searchVolume, 
            function(obj, param)
                if obj ~= nil and obj:getLife() > 0 and obj:isActive() and obj:getCoalition() ==  coalition.side.RED  then 
                    local vec3 =  obj:getPoint() 
                    local coord = COORDINATE:NewFromVec3(vec3)
                    local text =  obj:getTypeName() .. "\n\n" .. coord:ToStringLLDDM() .. "\n" .. coord:ToStringMGRS() .. "\n" .. coord:ToStringLLDMS()
                    param:AddMark({text = text, position = vec3, name = obj:getName() })
                end
            end
        , self)

        trigger.action.outText("Reconnaissance terminée", 20)

	end


	function ZeusMod:Reco(pos, cmds)
		if (self.turnOffReco) then return end
		local doReco = true
		local j = 0
		for i, value in pairs(self.marks) do 
			j = j + 1
			if (doReco and value ~= nil and j >= 40) then 
				trigger.action.outText("Reconnaissance impossible, trop d'unité identifiées...", 20)
				doReco = false
				return
			end
		end
		if (not doReco) then return end
		self:ExecReco(pos, cmds)
	end

	function ZeusMod:RandomPosInZone(codeName)
		if (self.zones[codeName] ~= nil) then 
			return self.zones[codeName]:GetRandomPointVec3()
		end
		return nil
	end

	function ZeusMod:ConvertCmd(cmd)
		local cmdN = {}
		cmdN[1] = "addZ"
		for i = 2, #cmd do 
			cmdN[i] = cmd[i+1]
		end
		return cmdN
	end

	function ZeusMod:onEvent(event)
        if (event.id == 26 and string.sub(event.text, 1,1) == "#") then
				local text = event.text:gsub("#","")  
				local cmd = self:Split(text, '_')
				if (self.needPassword and self.passwordDone) or (not self.needPassword) then 
					if (cmd[1] == "add") then self:AddGroup(event.pos, cmd) end -- for dev spawn 
					if (cmd[1] == "addZ") then self:AddSpecificGroup(event.pos, cmd) end -- for tempalte spawn 
					if (cmd[1] == "explosion") then self:Explode(event.pos, cmd) end -- boom 
					if (cmd[1] == "remove") then self:Remove(event.pos, cmd) end -- remove all 
					if (cmd[1] == "convoy") then self:AddConvoy(event.pos, cmd) end -- spawn convoy
					if (cmd[1] == "destination") then self.destination = event.pos end -- define destination for convoy
					if (cmd[1] == "reconolimit") then self:ExecReco(event.pos, cmd) end
					if (cmd[1] == "turnoffreco") then self.turnOffReco = true end
					if (cmd[1] == "turnonreco") then self.turnOffReco = false end
					if (cmd[1] == "zone") then 
						local vec3 = self:RandomPosInZone(cmd[2]) or self:RandomPosInZone(self.defineZone)
						local cmdN = self:ConvertCmd(cmd)
						if vec3 ~= nil and cmdN ~= nil then 
							self:AddSpecificGroup(vec3, cmdN) 
						end
					end 

					if (cmd[1] == "test") then 
						local coord = COORDINATE:NewFromVec3(event.pos)
						local POINT = POINT_VEC2:NewFromVec2(coord:GetVec2())
				
						SPAWNSTATIC:NewFromTemplate(TEMPLATE_TEST)
						:InitCountry(country.id.RUSSIA)
						:SpawnFromPointVec2(POINT, 90)
					end

				end
			
				if (self.needPassword and not self.passwordDone and cmd[1] == "pass") then 
					if cmd[2] and cmd[2] == self.password then 
						self.passwordDone = true 
					--	trigger.action.outText("Mot de passe confirmé", 10)
					end
				end

				-- cmd possible without pwd
				if (cmd[1] == "recon") then self:Reco(event.pos, cmd) end -- reco 
				trigger.action.removeMark(event.idx)
        end

		if (event.id == 27) then 
			if (self.marksIDs[event.idx] ~= nil) then 
				self.marks[self.marksIDs[event.idx]] = nil
				self.marksIDs[event.idx] = nil
			end
		end

		if (event.id == world.event.S_EVENT_UNIT_LOST or event.id == world.event.S_EVENT_DEAD ) then 
            if (event.initiator) then 
                local unitName = event.initiator:getName()
                if (self.marks ~= nil and self.marks[unitName] ~= nil) then 
					self:RemoveMark(unitName)
                end
            end

        end
	end
	

end

Convoy = {}

do




	--[[
	un convoi se défini par : 
		- les unités qui vont pop 
		- la base de départ  
		- la base de destination 
		- un temps minimal entre 2 pop 
		- ne peut pas pop s'il est en vie 
		- ne peut pas pop s'il n'est pas mort depuis assez longtemps 
	]]--

	function Convoy:New(templates) 
		local obj = {}
		setmetatable(obj,  {__index = self})
		obj.name = ""
		obj.templates = templates
		obj.units = {}
		obj.units.heavy = {
			"T-90", "BTR-80", "BTR-80", "Ural", "SA-9", "SA-15", "Ural", "Ural", "ZSU23", "BTR-80", "T-90"
		}
		obj.units.sa9 = {
			"T-90", "BTR-80", "BTR-80", "Ural", "SA-9", "Ural", "Ural", "ZSU23", "BTR-80", "T-90"
		}
		obj.units.zu = {
			"T-90", "BTR-80", "BTR-80", "Ural", "Ural", "Ural", "ZSU23", "BTR-80", "T-90"
		}
		obj.units.armored = {
			"T-90", "BTR-80", "BTR-80", "Ural", "Ural", "Ural", "BTR-80", "BMP-3", "T-90"
		}
		obj.units.t90 = {
			"T-90", "T-90", "T-90", "T-90", "T-90", "Ural", "T-90", "T-90"
		}
		obj.units.t90SA = {
			"T-90", "T-90", "T-90", "T-90", "T-90", "Ural", "SA-9", "T-90", "T-90"
		}
		obj.units.unArmored = {
			"Ural-4320T", "Ural-4320T", "Ural-4320T", "Ural", "Ural", "Ural", "Ural-4320-31", "Ural-4320-31", "Ural-4320T"
		}
		obj.units.scout = {
			"HL_KORD", "HL_KORD", "Tigr", "HL_KORD", "Ural", "Ural", "Ural-4320-31", "HL_KORD", "HL_KORD"
		}
		obj.units.uniq = {
			"HL_KORD"
		}
		return obj
	end

	function Convoy:FindUnitByName(name)
		for _, unitInfos in ipairs(self.templates) do 
			if (unitInfos.name and unitInfos.name == name) then return unitInfos.unit end
		end
	end

	function Convoy:EraseName()
		self.name = ""
	end

	function Convoy:IsAlive()
		local mooseGroup = GROUP:FindByName(self.name)
		if (mooseGroup == nil) then return false end
		return mooseGroup:IsAlive()
	end

	function Convoy:Destroy()
		local groupUnits = Group.getByName(self.name)
		if (groupUnits ~= nil) then  
			Group.getByName(groupUnits:GetName()):destroy()	
			self.EraseName()
		end
	end


	function Convoy:CreateTemplate(type, name)
		if (type == nil or name == nil or self.units[type] == nil) then return end
		local units = {}
		for index, unit in ipairs(self.units[type]) do 
			-- env.info(unit, false)
			units[#units + 1] = {
				["type"] = self:FindUnitByName(unit),
				["y"] = 0,
				["x"] = 20 * index,
				["name"] = "C_" .. unit .. tostring(index) ,
				["skill"] = "High",
			}
		end

		local temp = {
			--["route"] = {["points"] = {}},
			["task"] = {},
			["units"] = units,
			["name"] = "C_" .. name,  
			["y"] = 0,
			["x"] = 0
		
		}


		return temp
	end


	function Convoy:SpawnGroup(obj)
		if (obj.type == nil or obj.name == nil or obj.coalition == nil or obj.pos == nil or obj.destination == nil) then return self end

		local countryID = country.id.RUSSIA
		if (obj.coalition ==  coalition.side.BLUE) then 
			countryID = country.id.USA
		end

		local template = self:CreateTemplate(obj.type, obj.name)
		local coordinate = COORDINATE:NewFromVec3(obj.pos)
		local mooseGroup = SPAWN:NewFromTemplate(template,"C_".. obj.name)
		:InitCountry(countryID)
		:InitCoalition(obj.coalition)
		:InitCategory(Group.Category.GROUND)
		:OnSpawnGroup(
			function(grp)
				grp:RouteGroundOnRoad(COORDINATE:NewFromVec3(obj.destination), 45)
				--grp:RouteToVec3(obj.destination, 12)
				self.name = grp:GetName()
			end
		)
		:SpawnFromPointVec3(POINT_VEC3:NewFromVec3(obj.pos))
		env.info("spawn name : " .. tostring(self.name), false)
	end




end

env.info("Zeus load", false)
