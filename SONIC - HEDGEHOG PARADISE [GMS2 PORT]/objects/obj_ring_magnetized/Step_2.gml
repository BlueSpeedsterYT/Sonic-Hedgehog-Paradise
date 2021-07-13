/// @description  Destroy.
 
    if(!instance_exists(obj_player)) exit;
 
    var player;
    player = instance_nearest(x, y, obj_player);   
    
    if(player.shield != SHIELD_ELECTRICITY)
    {
       instance_destroy();
    }
    if(player.x > x+ID_WIDTH*4 || player.x < x-ID_WIDTH*4 || player.y > y+ID_HEIGHT*4 || player.y < y-ID_HEIGHT*4)
    {
       instance_destroy();
    }

