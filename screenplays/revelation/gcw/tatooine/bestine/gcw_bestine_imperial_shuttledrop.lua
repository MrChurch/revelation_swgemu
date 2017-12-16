-- Author: Matthias Muente (matthias.muente@gmx.de)

gcw_bestine_rebel_shuttledrop = ScreenPlay:new {
  planetName = "tatooine",
  mobileName = "transport_shuttle",
  scriptName = "gcw_bestine_rebel_shuttledrop",
}
registerScreenPlay("gcw_bestine_rebel_shuttledrop", true)

local shuttleanimationHelper = require("helper.shuttleanimationHelper")
local scriptName = "gcw_bestine_rebel_shuttledrop"
local ObjectManager = require("managers.object.object_manager")

function gcw_bestine_rebel_shuttledrop:start()
    if (isZoneEnabled("tatooine")) then
        self:init()
    end
end

function gcw_bestine_rebel_shuttledrop:init()
    -- initialize the shuttles and send them away 
    -- init Powersupply Shuttle
    local pShuttle = spawnMobile(self.planetName, self.mobileName, 0, -1349, 24, -3442, 270, 0)
    ObjectManager.withCreatureObject(pShuttle, function(shuttle)
      writeData("reb_shuttleanimation:Bestine:PowersupplyShuttle", shuttle:getObjectID())
      shuttle:setOptionsBitmask(256)
      shuttle:setPosture(PRONE)
      createEvent(1000, self.scriptName, "launchferry", pShuttle)
    end)
    -- init Barracs Shuttle
    pShuttle = spawnMobile(self.planetName, self.mobileName, 0, -1054, 22, -3466, 260, 0)
    ObjectManager.withCreatureObject(pShuttle, function(shuttle)
      writeData("reb_shuttleanimation:Bestine:BarracsShuttle", shuttle:getObjectID())
      shuttle:setOptionsBitmask(256)
      shuttle:setPosture(PRONE)
      createEvent(1000, self.scriptName, "launchferry", pShuttle)
    end)
end

function gcw_bestine_rebel_shuttledrop:launchferry(pShuttle)
  ObjectManager.withCreatureObject(pShuttle, function(shuttle)
    shuttle:setPosture(FLYING)
  end)
  return 0
end

