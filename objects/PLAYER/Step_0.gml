switch(state)
{
	case STATE_PLAYER.Walk:
	
		// Horizontal Movement A or D
		var moveRight = keyboard_check(vk_right) + keyboard_check(ord("D"));
		var moveLeft = keyboard_check(vk_left) + keyboard_check(ord("A"));
		MoveX = lerp(MoveX, (moveRight - moveLeft) * MoveSpeed, 0.2);

		// Floating Check and Jump
		if (place_meeting(x, y + 2, mTerrain))
		{
		    MoveY = 0;
		    if (keyboard_check(vk_space)) MoveY = -JumpSpeed;
		}
		else if (MoveY < 10)
		{
		    MoveY += 1;
		}

		// Collision Check
		move_and_collide(MoveX, MoveY, mTerrain);

		// Sprite Reversal
		var lastmov = 0;
		if (MoveX > 0)
		{
		    sprite_index = PlayerR;
			lastmov = 0;
		}
		else if (MoveX < 0)
		{
		    sprite_index = PlayerL;
			lastmov = 1;
		}
	
	break;
	case STATE_PLAYER.Attack:
    break;
}

// When attacking the target_enemy
if (keyboard_check_pressed(vk_control) && can_attack) {
    sprite_index = sprite[combo];
    combo = (combo + 1) % comboMax;

    alarm[0] = attack_speed;
    alarm[1] = 15;
	
	if (target != noone) {
		if (distance_to_object(target) <= attackrange) {
			if(can_attack == true)  {
				can_attack = false;
				target.hitpoints -= irandom_range(damage-8, damage+5);
			}
		}
	}
}









