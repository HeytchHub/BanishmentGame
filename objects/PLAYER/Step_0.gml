// Horizontal Movement A or D
move_x = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
move_x *= move_speed;

// Floating Check and Jump
if (place_meeting(x, y + 2, terrain_mask))
{
    move_y = 0;
    if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10)
{
    move_y += 1;
}

// Collision Check
move_and_collide(move_x, move_y, terrain_mask);

// Sprite Reversal
var lastmov = 0;
if (move_x > 0)
{
    sprite_index = PlayerR;
	lastmov = 0;
}
else if (move_x < 0)
{
    sprite_index = PlayerL;
	lastmov = 1;
}

if (keyboard_check_pressed(vk_control) && can_attack) {
    can_attack = false;
    sprite_index = sprite[combo];
    combo = (combo+1)%comboMax;

    alarm[0] = 10;
    alarm[1] = 15;
	global.isAttack = true;
}

