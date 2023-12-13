// Speed 
move_speed = 6;
jump_speed = 16;

move_x = 0;
move_y = 0;

room_index = 1;

global.player_x = 100;
global.player_y = 200;

global.current_room = room_index;

terrain_mask = layer_tilemap_get_id("tTerrain");

can_attack = true;

combo = 0;
comboMax = 1;
sprite[0] = PlayerA;