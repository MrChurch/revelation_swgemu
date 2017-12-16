
-- Author M.Muente matthias.muente@gmx.de

startdungeon_theed = ScreenPlay:new {
     scriptName = "startdungeon_theed",
     spawnMaNPC = {
        -- bunker
        {"meatlump_clod", 240, 0, 0, 2, 270, 2, 0},
        {"meatlump_fool", 300, 3.8, 0.3, -3.7, 90, 3, 0},
        {"meatlump_buffoon", 400, 7.3, -12, 25.7, 0, 4, 0},
        {"meatlump_fool", 400, 0, -12, 24, 0, 4, 0},
        {"meatlump_oaf", 300, 23, -12, 31, 270, 5, 0},
        {"meatlump_buffoon", 400, 7, -16, 56.6, 0, 7, 0},
        {"meatlump_loon", 370, 0, -16, 56.6, 0, 7, 0},
        {"meatlump_loon", 300, 3, -16.0, 75, 180, 7, 0},
        {"meatlump_oaf", 270, 48, -16.0, 84, 270, 8, 0},
        {"meatlump_buffoon", 270, 58, -16.0, 82, 270, 8, 0},
        {"meatlump_buffoon", 350, -29, -14, 82.7, 270, 9, 0},
        {"rev_meatlump_leader", 400, -43, -14, 78.1, 90, 9, 0},
     },
}

registerScreenPlay("startdungeon_theed", true)
local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function startdungeon_theed:start()
    if (isZoneEnabled("naboo")) then
        self:spawnStructures()
        self:spawnnpc()
    end
end




function startdungeon_theed:spawnStructures()
    local pCreature = spawnMobile("naboo", "cll8_binary_load_lifter", 0, -5360, -9999, 4580, 250, 0)
    local pBuilding = spawnBuilding(pCreature,"object/building/general/bunker_small_outpost_02.iff", -5341, 4595, 180)
    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    if (building ~= nil and sceneCellObject ~= nil) then
        for i = 1, 9, 1 do
            sceneCellObject:_setObject(building:getCell(i))
            local cellID = sceneCellObject:getObjectID()
            writeData("naboo_startdungeon:CellID:" .. i, cellID)
        end
    end
end

function startdungeon_theed:spawnnpc()
    local count = 0
    for i,v in ipairs(self.spawnMaNPC) do
        local objectID = readData("naboo_startdungeon:CreatureID_" .. count)
        local checkCreature = getCreatureObject(objectID)
        local needRespawn = false
         
        local pCreature
        local cellID = 0
        local rotate = 0
    
        if v[6] == 999 then
            rotate = math.random(360)
        else
            rotate = v[6]
        end
    
        if v[7] > 0 then
            if v[7] > 1000 then
                cellID = v[7]
            else
                cellID = readData("naboo_startdungeon:CellID:" .. v[7])
            end
        end
    
            pCreature = spawnMobile("naboo", v[1], v[2], v[3], v[4], v[5], rotate, cellID )

        count = count + 1
    end
    return 0
end