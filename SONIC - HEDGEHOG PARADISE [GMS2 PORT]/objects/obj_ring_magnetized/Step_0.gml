/// @description  Movement.
   
 // Exit if player doesn't exist.
    if(!instance_exists(obj_player)) exit;
 
    var player;
    player = instance_nearest(x, y, obj_player);
    
    var xx, yy;
    xx = sign(player.x-x);
    yy = sign(player.y-y);
    
    hspeed += xx*(0.1875+(0.75*(sign(hspeed)!=xx)));
    vspeed += yy*(0.1875+(0.75*(sign(vspeed)!=yy))); 
    speed   = clamp(speed, -64, 64);


/// Animation speed.

    image_index = global.object_time div 120;



