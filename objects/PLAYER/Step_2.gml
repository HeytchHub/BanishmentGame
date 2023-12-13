//Camera Variables
ViewHeight = camera_get_view_height(view_camera[0]) / 2;
ViewWidth = camera_get_view_width(view_camera[0]) / 2;

//Camera Interpolation
ViewLerp = 0.1;
var targetX = lerp(camera_get_view_x(view_camera[0]), x - ViewWidth, ViewLerp);
var targetY = lerp(camera_get_view_y(view_camera[0]), y - ViewHeight, ViewLerp);

//Camera Limits
targetX = clamp(targetX, 0, room_width - camera_get_view_width(view_camera[0]));
targetY = clamp(targetY, 0, room_height - camera_get_view_height(view_camera[0]));


camera_set_view_pos(view_camera[0], targetX, targetY);
