require('ai.ai')
require('ai.actions.move')

PatrolMoveBase = createClass(MoveBase)

function PatrolMoveBase:checkConditions(pAgent)
  if (pAgent ~= nil) then
    local agent = AiAgent(pAgent)
    local sFollowState = "UNKNOWN"
    if agent:getFollowState() == PATROLLING then
      sFollowState = "PATROLLING"
    end
    if agent:getFollowState() == OBLIVIOUS then
      agent:setFollowState(PATROLLING)
    end
     
    if agent:getFollowState() == PATROLLING then
      if agent:setDestination() > 0 then
        return true
      end
    end
  end
  return false
end
--[[function PatrolMoveBase:findNextPosition(pAgent)
  if (pAgent ~= nil) then
    local agent = AiAgent(pAgent)
    if (agent:)
  end
end]]

PatrolMove = createClass(PatrolMoveBase, Interrupt)
PatrolMoveDefault = createClass(PatrolMoveBase, DefaultInterrupt)
PatrolMovePack = createClass(PatrolMoveBase, PackInterrupt)
PatrolMoveCreaturePet = createClass(PatrolMoveBase, CreaturePetInterrupt)
PatrolMoveDroidPet = createClass(PatrolMoveBase, DroidPetInterrupt)
PatrolMoveFactionPet = createClass(PatrolMoveBase, FactionPetInterrupt)
