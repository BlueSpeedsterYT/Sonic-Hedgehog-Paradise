/// @description  Draw.

    if(motion == true && timer < 90)
    {
       if((timer div 4) mod 2)
       {
           draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
       }
    }
    else
    {
       draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }


