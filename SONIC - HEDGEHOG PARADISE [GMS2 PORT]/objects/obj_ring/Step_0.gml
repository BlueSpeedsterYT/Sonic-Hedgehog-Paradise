/// @description  Animation speed.

    if(motion == 0)
    {
       image_index = global.object_time div 120;
    }
    if(motion == 1 && timer > 120)
    {
       image_index = global.object_time div 80;
    }
    if(motion == 1 && timer < 120)
    {
       image_index = global.object_time div 200;
    }    
    


/// Motion (Dropped)

 // Exit if magnetized:
    if(magnetized != 1) 
    {
    
 // Apply Motion:
    if(motion == true)
    {
       if(!place_meeting(x+x_speed, y, par_solid))
       {
          x += x_speed;
       }
       else
       {
          x_speed *= -0.25;
       }
       if(!place_meeting(x, y+y_speed, par_solid))
       {
          y += y_speed;
       }
       else
       {
          y_speed *= -0.75;
       }  y_speed += 0.09375  
 
       // Decrease timer:
          if(timer > 0)
          {
             timer -= 1
          }
          else instance_destroy();       
    }   

 // Destroy rings outside the view.
    if(motion == true)
    {
       if(x < __view_get( e__VW.XView, 0 )-sprite_width || x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+sprite_width || y < __view_get( e__VW.YView, 0 )-sprite_height || y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+sprite_height)
       {
          instance_destroy();
       }
    }

    }

/// Magnetized.
 // Checks if the player has a electro shield. If it does we replace this ring with a magnetized one.
 /*
 // Exit if in motion.
    if(motion != true)
    {

    if(magnetized == false)
    {
       if(!instance_exists(obj_player)) exit;
       
       var player;
       player = instance_nearest(x, y, obj_player);
       
       if(player != noone)
       {
          if(player.shield == SHIELD_ELECTRICITY)
          {
             if(distance_to_object(player) < 64)
             {
                magnetized = true;
                instance_destroy();
             }
          }
       }
    }
    
    }


/* */
/*  */
