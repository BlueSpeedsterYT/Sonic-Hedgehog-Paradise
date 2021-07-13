/// @description  Clamp the Camera.
if(cam_focus == obj_player && cam_focus.state != STATE_DEATH)
{
    __view_set( e__VW.XView, 0, clamp(floor(cam_focus.x + cam_x_shift - cam_hborder), cam_limit_left,  cam_limit_right - cam_width) );
    __view_set( e__VW.YView, 0, clamp(floor(cam_focus.y + cam_y_shift - cam_vborder), cam_limit_top,   cam_limit_bottom - cam_height) );
}

