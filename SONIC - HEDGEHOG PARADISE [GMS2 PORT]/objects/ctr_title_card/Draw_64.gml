/// @description Draw Title Card

 // Draw the damn bars
	BarSpdX -= 4
	BarSpdX2 += 4
	
	draw_sprite_tiled_horizontal(spr_bar_scroll, 0, BarSpdX, 0, 1, 1, 0, c_white, GameNameAlpha)
	draw_sprite_tiled_horizontal(spr_bar_scroll, 1, BarSpdX2, DIS_HEIGHT-sprite_get_height(spr_bar_scroll), 1, 1, 0, c_white, GameNameAlpha)
	draw_sprite_tiled_horizontal(spr_game_name_bar, 0, BarSpdX, 32, 1, 1, 0, c_white, GameNameAlpha)
	draw_sprite_tiled_horizontal(spr_game_name_bar, 0, BarSpdX2, (DIS_HEIGHT-32)-sprite_get_height(spr_game_name_bar), 1, 1, 0, c_white, GameNameAlpha)
	
 // Draw Title Card BG
	draw_sprite_ext(spr_white_screen, 0, (DIS_WIDTH/2), (DIS_HEIGHT/2), boxXScale, boxYScale, 0, c_white, GameNameAlpha)

 // Draw Zone Text / Act Number
	draw_set_align(fa_middle,fa_center)
	draw_text_font_alpha(font, GameNameAlpha, zoneX, zoneY, zoneText)
	draw_sprite_ext(spr_title_card_act, actNum, actX, actY, 1, 1, 0, c_white, GameNameAlpha)
	
 // Character Bar:
	BarSpdY += 8
	draw_sprite_tiled_vertical(spr_chara_bar, global.character_index, BarX, BarSpdY, 1, 1, 0, c_white, GameNameAlpha)