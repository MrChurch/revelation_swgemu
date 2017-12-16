july4th_fireworks = ScreenPlay:new {
	numberOfActs = 1,

	screenPlayName = "july4th_fireworks",

	fireworks = {
		"object/static/firework/fx_01.iff",
		"object/static/firework/fx_02.iff",
		"object/static/firework/fx_03.iff",
		"object/static/firework/fx_04.iff",
		"object/static/firework/fx_05.iff",
		"object/static/firework/fx_10.iff",
		"object/static/firework/fx_11.iff",
		"object/static/firework/fx_18.iff"
	},
	firework_locations = {
		--corellia = {
		--	start_pos = { x = -150, z = 28, y = -4850 },
		--	end_pos = { x = -190, z = 28, y = -4850 },
		--	count = 35,
		--},
		naboo = {
			planet = "naboo",
			start_pos = { x = -4864, z = 6, y = 4048 },
			end_pos = { x = -4931, z =  6, y = 4146 },
			count = 25,
		},
		naboo1 = {
			planet = "naboo",
			start_pos = { x = -4852, z = 6, y = 4095 },
			end_pos = { x = -4915, z = 6, y = 4166 },
			count = 25,
		}		
--		"tatooine" = {
--		
--		}
	},
	-- delay between remove / replace
	-- we need to create new objects to trigger the animations again,
	-- each object only animates once (unless you zone to the same location again)
	firework_respawn = 15

}

registerScreenPlay("july4th_fireworks", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function july4th_fireworks:start()
	local i = 0
	for zone, data in pairs(self.firework_locations)  do
		self:spawnFireworks(zone, data)
		i = i + 1
	end

	if i > 0 then
		self:scheduleTimer()
	end

end




function july4th_fireworks:calculateStepDelta(start_pos, end_pos, count) 
	local delta = {}
	function distance(a, b) 
		local neg = a < 0 and b < 0
		if b > a then
			return (b - a)
		end
		return (a - b) * -1
	end
	delta.x = distance(start_pos.x, end_pos.x) 
	delta.y = distance(start_pos.y, end_pos.y) 
	delta.z = distance(start_pos.z, end_pos.z)

	local step_delta = {
		x = delta.x / count,
		z = delta.z / count,
		y = delta.y / count
	}
--	print ("delta x = " .. step_delta.x .. " y " .. step_delta.y  .. " z " .. step_delta.z)
	return step_delta
end

function july4th_fireworks:spawnFireworks(zone, data) 
	local start_pos = data.start_pos
	local end_pos = data.start_pos
	local count = data.count
	local planet = data.planet
	
	if isZoneEnabled(planet) then
		-- calculate increments
		local delta = self:calculateStepDelta(start_pos, end_pos, count) 

		local i
		for i = 0, count, 1 do
			local current_position = self:calculatePosition(start_pos, delta, i)
			local randomObjectName = self:getRandomFirework()
			if randomObjectName ~= nil then
				--print(randomObjectName)
				local pObject = spawnSceneObject(planet,
								randomObjectName,
								current_position.x,
								current_position.z,
								current_position.y,
								0, 1, 0, 0, 0
				)
				self:writeObject(zone, i, pObject)
			end
		end
	end
end

function july4th_fireworks:calculatePosition(start, delta, i)
	local current_position = {
		x = start.x + (i * delta.x),
		z = start.z + (i * delta.z),
		y = start.y + (i * delta.y)
	}
--	print ( "x = " .. current_position.x .. " delta: " .. delta.x )
--	print ( "y = " .. current_position.y .. " delta: " .. delta.y )
--	print ( "z = " .. current_position.z  .. " delta: " .. delta.z )
	return current_position
end

function july4th_fireworks:respawnFireworks() 
	for zone, data in pairs(self.firework_locations) do
		local planet = data.planet
		if isZoneEnabled(planet) then
			local start_pos = data.start_pos
			local end_pos = data.end_pos
			local count = data.count
			local delta = self:calculateStepDelta(start_pos, end_pos, count)
			local i
			for i = 0, count, 1 do
				local pObject = self:getObject(zone, i)
				-- mark it as invalid after retrival
				self:writeObject(zone, i, nil)
				if pObject ~= nil then
					local sceneObject = SceneObject(pObject)
					sceneObject:destroyObjectFromWorld(true)
				end

				local current_position = self:calculatePosition(start_pos, delta, i)
				local randomObjectName = self:getRandomFirework()

				if randomObjectName ~= nil then
					--print(randomObjectName)
					--print(current_position.x)
					--print(current_position.z)
					--print(current_position.y)
					local pObject = spawnSceneObject(planet,
									 randomObjectName,
									 current_position.x,
									 current_position.z,
									 current_position.y,
									 0, 0, 0, 0, 0
					)
					self:writeObject(zone, i, pObject)
				end
			end
		end
	end
	self:spawnProbots()
	
	self:scheduleTimer()	
end


-- returns pointers
function july4th_fireworks:getObject(zone, i)
	local name = self:getObjectName(zone, i)
	local objectID = readData(name)
	if objectID ~= 0 then
		local object = getSceneObject(objectID)
		return object
	end

	return nil
end

-- takes pointers
function july4th_fireworks:writeObject(zone, i, object)
	local name = self:getObjectName(zone, i)
	local objectID = 0
	if object ~= nil then
		local sceneObject = SceneObject(object)
		objectID = sceneObject:getObjectID()
	end
	writeData(name, objectID)
end

function july4th_fireworks:getObjectName(zone, i)
	return self.screenPlayName .. ":" .. zone .. i
end


function july4th_fireworks:getRandomFirework()
	local n = math.random(1, #self.fireworks)
	local pick = self.fireworks[n]
	if pick ~= nil then
		return pick
	else
--		print ("Failed to pick a firework, index: " .. n)
		return nil
	end
end

function july4th_fireworks:executeTimer()
	self:respawnFireworks()
	return 0
end

function july4th_fireworks:scheduleTimer()
	createEvent(1000 * self.firework_respawn, self.screenPlayName, "executeTimer", nil)
end


function july4th_fireworks:spawnProbots()
	local probot1 = spawnMobile("naboo", "probot", 0, -4876, 6, 4100, 0, 0)
	local probot2 = spawnMobile("naboo", "probot", 0, -4886, 6, 4110, 0, 0)
	local probot3 = spawnMobile("naboo", "probot", 0, -4896, 6, 4120, 0, 0)
	local probot4 = spawnMobile("naboo", "probot", 0, -4906, 6, 4130, 0, 0)
	local probot5 = spawnMobile("naboo", "probot", 0, -4916, 6, 4140, 0, 0)
	local probot6 = spawnMobile("naboo", "probot", 0, -4926, 6, 4150, 0, 0)
	
	createEvent(4500, self.screenPlayName, "setPosture", probot1)
	createEvent(4500, self.screenPlayName, "setPosture", probot2)
	createEvent(4500, self.screenPlayName, "setPosture", probot3)
	createEvent(4500, self.screenPlayName, "setPosture", probot4)
	createEvent(4500, self.screenPlayName, "setPosture", probot5)
	createEvent(4500, self.screenPlayName, "setPosture", probot6)
	
	createEvent(12000, self.screenPlayName, "despawnProbots", probot1)
	createEvent(12000, self.screenPlayName, "despawnProbots", probot2)
	createEvent(12000, self.screenPlayName, "despawnProbots", probot3)
	createEvent(12000, self.screenPlayName, "despawnProbots", probot4)
	createEvent(12000, self.screenPlayName, "despawnProbots", probot5)
	createEvent(12000, self.screenPlayName, "despawnProbots", probot6)
	
	return 0
end


function july4th_fireworks:despawnProbots(pSceneObject)
	if pSceneObject ~= nil then
		ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
	end
	return 0
end

function july4th_fireworks:setPosture(pSceneObject)
	ObjectManager.withCreatureObject(pSceneObject, function(creature)
		creature:setPosture(8) 
	end)
	return 0
end

