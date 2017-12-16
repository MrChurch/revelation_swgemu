-- Author: Matthias Muente (matthias.muente@gmx.de)



gcw_naboo_shuttledrop = ScreenPlay:new {
  planetName = "naboo",
  mobileName = "transport_shuttle",
  scriptName = "gcw_naboo_shuttledrop",
}
registerScreenPlay("gcw_naboo_shuttledrop", true)

local shuttleanimationHelper = require("helper.shuttleanimationHelper")
local scriptName = "gcw_naboo_shuttledrop"
local ObjectManager = require("managers.object.object_manager")

function gcw_naboo_shuttledrop:start()
    if (isZoneEnabled(self.planetName)) then
        self:init()
    end
end

function gcw_naboo_shuttledrop:init()
    -- initialize the shuttles and send them away 
    local pShuttle = spawnMobile(self.planetName, self.mobileName, 0, -4882, 6, 4115, 330, 0)
    ObjectManager.withCreatureObject(pShuttle, function(shuttle)
      writeData("gcw_shuttleanimation:naboo:Starport", shuttle:getObjectID())
      shuttle:setOptionsBitmask(256)
      shuttle:setPosture(PRONE)
      createEvent(1000, self.scriptName, "launchferry", pShuttle)
    end)
end

function gcw_naboo_shuttledrop:launchferry(pShuttle)
  ObjectManager.withCreatureObject(pShuttle, function(shuttle)
    shuttle:setPosture(FLYING)
  end)
  return 0
end

