// Speed 
MoveSpeed = 6;
JumpSpeed = 16;
MoveX = 0;
MoveY = 0;
mTerrain = layer_tilemap_get_id("tTerrain");
can_attack = true;
combo = 0;
comboMax = 1;
sprite[0] = PlayerA;
global.isAttack = false;

state = STATE_PLAYER.Walk;