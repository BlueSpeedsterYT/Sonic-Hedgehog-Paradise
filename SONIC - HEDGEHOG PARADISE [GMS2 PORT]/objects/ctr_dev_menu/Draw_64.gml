/// @description Draw the fucking Dev Menu.

 if(Dev_Pause != false)
 {
	if(Game_Snap != noone)
	{
		draw_sprite(Game_Snap, 1, 640, 360)
	}
		draw_rectangle_color_new(c_blue, drawRecX1, drawRecY1, drawRecX2, drawRecY2, false)
		draw_set_align(fa_middle, fa_center)
		
		draw_set_color(c_white)
		draw_text_font(global.font_dev, 640, drawRecY1+16, "ArcadiaSonic Framework VER 0.3PROTO#REV. Sonic: Hedgehog Paradise#GMS VER. "+string(GM_runtime_version))
		draw_text_font(global.font_dev, 640, 360, "Currently, the Dev Menu#is not complete, but#it will be added#later.")
 }