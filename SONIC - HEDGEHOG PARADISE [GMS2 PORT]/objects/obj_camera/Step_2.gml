/// @description  Camera shifting.

    if(cam_focus == obj_player)
    {
       // Looking up:
          if(cam_focus.state == STATE_LOOKUP && cam_focus.timer_up >= 120)
          {
             cam_y_shift = max(-104, cam_y_shift-2);
          }
          else
       // Looking down:
          if(cam_focus.state == STATE_CROUCH && cam_focus.timer_down >= 120)
          {
             cam_y_shift = min(104, cam_y_shift+2);
          }       
          else // Center camera.
          {
             cam_y_shift = max(0, abs(cam_y_shift)-2)*sign(cam_y_shift);
          }   
          
    }
       // Pan the camera horizontally. (UNUSED.)
       /*   if(cam_focus.x_speed >= cam_focus.x_speed_top)
          {
             cam_x_shift = approach(cam_x_shift, 128, 2);
          }
          else
          if(cam_focus.x_speed <= -cam_focus.x_speed_top)
          {
             cam_x_shift = approach(cam_x_shift, -128, 2);
          }
          else
          {
             cam_x_shift = max(0, abs(cam_x_shift)-2)*sign(cam_x_shift);
          }

    }

/* */
/// Camera Movement


//x = floor(cam_focus.x + cam_x_shift - view_hborder);
//y = floor(cam_focus.y + cam_y_shift - view_vborder);

/* */
/*  */
