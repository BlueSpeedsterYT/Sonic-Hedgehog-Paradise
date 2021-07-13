/// @description  Draw the HUD

 switch(global.HUDStyle)
 {
 
    case 0:
    {
     draw_set_font(global.font_hud)
     draw_set_valign(fa_top)
     draw_set_alpha(1)
     
     // Rings:
        draw_set_halign(fa_left)
        draw_zone_rings(32, 32)
     
     // Time:
        draw_set_halign(fa_center)
        draw_zone_timer(DIS_WIDTH/2, 32)
     break;
    } 
 
    case 1:
    {
     draw_set_font(global.font_hud)
     draw_set_valign(fa_top)
     draw_set_alpha(1)
     
     // Rings:
        draw_set_halign(fa_right)
        draw_zone_rings(DIS_WIDTH-32, 50)
     
     // Time:
        draw_set_halign(fa_right)
        draw_zone_timer(DIS_WIDTH-32, 32)
     break;
    }
    
    case 2:
    {
     draw_set_font(global.font_hud)
     draw_set_valign(fa_top)
     draw_set_alpha(1)
     
     // Rings:
        draw_set_halign(fa_left)
        draw_zone_rings(32, 50)
     
     // Time:
        draw_set_halign(fa_left)
        draw_zone_timer(32, 32)
     break;
    }
    
    case 3:
    {
     draw_set_font(global.font_hud)
     draw_set_valign(fa_bottom)
     draw_set_alpha(1)
     
     // Rings:
        draw_set_halign(fa_left)
        draw_zone_rings(32, DIS_HEIGHT-32)
     
     // Time:
        draw_set_halign(fa_left)
        draw_zone_timer(32, DIS_HEIGHT-50)
     break;
    }
    
    case 4:
    {
     draw_set_font(global.font_hud)
     draw_set_valign(fa_bottom)
     draw_set_alpha(1)
     
     // Rings:
        draw_set_halign(fa_right)
        draw_zone_rings(DIS_WIDTH-32, DIS_HEIGHT-32)
     
     // Time:
        draw_set_halign(fa_right)
        draw_zone_timer(DIS_WIDTH-32, DIS_HEIGHT-50)
     break;
    }
    
    case 5:
    {
     draw_set_font(global.font_hud)
     draw_set_valign(fa_bottom)
     draw_set_alpha(1)
     
     // Rings:
        draw_set_halign(fa_left)
        draw_zone_rings(32, DIS_HEIGHT-32)
     
     // Time:
        draw_set_halign(fa_center)
        draw_zone_timer(DIS_WIDTH/2, DIS_HEIGHT-32)
     break;
    } 
 
 }

