/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_red);
draw_text(x-35, y-80,string(hitpoints)+"/"+string(maxHitpoints));

draw_set_color(c_yellow); 
draw_text(x-62, y-80, string(player_level));
draw_set_alpha(1);
draw_circle(x - 58, y - 70, string_width(string(player_level)) + 3, true); 

