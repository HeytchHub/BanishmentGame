// Speed 
MoveSpeed = 6;
JumpSpeed = 17;
MoveX = 0;
MoveY = 0;
mTerrain = layer_tilemap_get_id("tTerrain");
can_attack = true;
combo = 0;
comboMax = 1;
sprite[0] = PlayerA;
global.isAttack = false;

state = STATE_PLAYER.Walk;

//attack and kill code
target_enemy = noone;
damage = 20;
attack_speed = 50;
attackrange = 10;
attack_delay = 3 * room_speed; 

