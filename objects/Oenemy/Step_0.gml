var distance_to_player = point_distance(x, y, PLAYER.x, PLAYER.y);
var chase_range = 400;
var min_gravity_distance = 100; 

if (distance_to_player < chase_range) {
    if (place_meeting(x, y + 1, BOUND)) {
        var direction_to_player = point_direction(x, y, PLAYER.x, PLAYER.y);
        var move_speed = 2; 
        var hspd = lengthdir_x(move_speed, direction_to_player);

        if (!place_meeting(x + hspd, y, BOUND)) {
            x = x + hspd;
        } else {
            while (!place_meeting(x + sign(hspd), y, BOUND)) {
                x = x + sign(hspd);
            }
        }
       
    } else {
        vspd += grv;
    }
}

if (distance_to_player >= chase_range || distance_to_player > min_gravity_distance) {
    vspd += grv; 
}


if (!place_meeting(x, y + vspd, BOUND)) {
    y = y + vspd;
} else {
    while (!place_meeting(x, y + sign(vspd), BOUND)) {
        y = y + sign(vspd);
    }
    vspd = 0; 
}
