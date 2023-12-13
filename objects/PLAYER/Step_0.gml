move_x = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
move_x *= move_speed;

if (place_meeting(x, y + 2, obj_ground))
{
    move_y = 0;
    if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10)
{
    move_y += 1;
}

move_and_collide(move_x, move_y, obj_ground);

if (move_x > 0)
{
    sprite_index = PlayerR;
}
else if (move_x < 0)
{
    // Left movement
    sprite_index = PlayerL;
}