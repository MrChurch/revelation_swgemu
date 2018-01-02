patrol = {
	{"root", "Composite", "none", SELECTORBEHAVIOR},
	{"attack", "Composite", "root", SEQUENCEBEHAVIOR},
	{"patrol", "CompositeDefault", "root", SEQUENCEBEHAVIOR},
	{"attack0", "GetTarget", "attack", BEHAVIOR},
	{"attack1", "SelectWeapon", "attack", BEHAVIOR},
	{"attack2", "SelectAttack", "attack", BEHAVIOR},
	{"attack3", "CombatMove", "attack", BEHAVIOR},
	{"patrol0", "PatrolMoveDefault", "patrol", BEHAVIOR},
}

addAiTemplate("patrol", patrol)
