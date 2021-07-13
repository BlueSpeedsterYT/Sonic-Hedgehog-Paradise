/// @description  Init. the camera system

cam_object  = __view_set(e__VW.Object, 0, id); // Object ID

cam_width = __view_set(e__VW.WView, 0, ID_WIDTH);  // ID_WIDTH = The ideal width in obj_display_manager.
cam_height = __view_set(e__VW.HView, 0, ID_HEIGHT); // ID_HEIGHT = The ideal height in obj_display_manager.

cam_hborder = __view_set(e__VW.HBorder, 0, ID_WIDTH/2);  // ID_WIDTH/2 = Half of the ideal width (640/2 = 320).
cam_vborder = __view_set(e__VW.VBorder, 0, ID_HEIGHT/2); // ID_HEIGHT/2 = Half of the ideal height (360/2 = 180).

border_left = 0;
border_right = room_width;

cam_limit_left = 0;             // The left limit of the camera.
cam_limit_right = room_width;   // The right limit of the camera.

border_top = 0;
border_bottom = room_height;

cam_limit_top = 0;              // The top limit of the camera.
cam_limit_bottom = room_height; // The bottom limit of the camera.

cam_focus = obj_player; // Camera Focus.
cam_speed = 6.5;        // Camera Speed.

cam_x = x; // The camera's X
cam_y = y; // The camera's Y
cam_x_shift = 0; // The shifting camera's X
cam_y_shift = 0; // The shifting camera's Y
cam_limit = 0;   // The camera's limit.


