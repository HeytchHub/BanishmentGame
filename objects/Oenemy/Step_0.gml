var distance_to_player = point_distance(x, y, PLAYER.x, PLAYER.y);
var chase_range = 200;
var min_gravity_distance = 100; 

if (distance_to_player < chase_range) {
	sprite_index = enemy_alert;
    if (place_meeting(x, y + 1, terrain_mask)) {
        var direction_to_player = point_direction(x, y, PLAYER.x, PLAYER.y);
        var move_speed = 2; 
        var hspd = lengthdir_x(move_speed, direction_to_player);

        if (!place_meeting(x + hspd, y, terrain_mask)) {
            x = x + hspd;
        } else {
            while (!place_meeting(x + sign(hspd), y, terrain_mask)) {
                x = x + sign(hspd);
            }
        }
       
    } else {
        vspd += grv;
    }
}
else {
	sprite_index = enemy_idle;	
}

if (distance_to_player >= chase_range || distance_to_player > min_gravity_distance) {
    vspd += grv; 
}


if (!place_meeting(x, y + vspd, terrain_mask)) {
    y = y + vspd;
} else {
    while (!place_meeting(x, y + sign(vspd), terrain_mask)) {
        y = y + sign(vspd);
    }
    vspd = 0; 
}

var PlayerAttacking = global.isAttack;

if (PlayerAttacking == true){
    if (place_meeting(x, y, PLAYER)) {
		sprite_index = enemy_damaged; 
        instance_destroy();
    }
}

