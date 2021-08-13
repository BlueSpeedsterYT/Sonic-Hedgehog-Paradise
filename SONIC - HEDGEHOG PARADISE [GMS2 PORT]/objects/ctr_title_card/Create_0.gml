/// @description Init Code for Title Card

	// Basics
	font = global.font_title_card;
	zoneText = global.zoneName;
	actNum = global.zoneAct;
	boxTimer = 0;
	boxTimerLimit = 240;
	boxXScale = 2;
	boxYScale = 2;
	BarSpdX = 0;
	BarSpdX2 = 0;
	BarSpdY = 0;
	BarX = -sprite_get_width(spr_chara_bar);
	BarX2 = -sprite_get_width(spr_chara_bar);
	zoneX = -(DIS_WIDTH/2)-string_width(string(zoneText));
	zoneX2 = (DIS_WIDTH)+(DIS_WIDTH/2)+string_width(string(zoneText))
	zoneY = DIS_HEIGHT/2;
	actX = -(DIS_WIDTH/2)-sprite_get_width(spr_title_card_act);
	actX2 = (DIS_WIDTH)+(DIS_WIDTH/2)+sprite_get_width(spr_title_card_act);
	actY = (DIS_HEIGHT/2)+(12);
	GameNameAlpha = 1;
	
	obj_player.input_lock = true;
