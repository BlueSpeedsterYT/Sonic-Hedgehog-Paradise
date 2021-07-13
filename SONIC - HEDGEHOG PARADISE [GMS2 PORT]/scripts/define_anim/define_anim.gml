// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_anim(){
	switch(player_index)
	{	
		case CHAR_SONIC:
		{
			anim_set("IDLE", spr_sonic_idle, 0.20, 0, 7, 0, -1, "", 0)
			anim_set("JUMP", spr_sonic_jump, 0.25, 0, 3, 0, -1, "", 0)
			anim_set("ROLL", spr_sonic_roll, 0.50, 0, 5, 0, -1, "", 0)
			anim_set("STOMP", spr_sonic_stomp, 0.30, 0, 1, 0, -1, "", 0)
			anim_set("STOMP_LAND", spr_sonic_stomp_land, 0.30, 0, 2, 0, 0, "IDLE", 0)
			anim_set("WALK", spr_sonic_walk, 0.20, 0, 7, 0, -1, "", 0)
			anim_set("JOG", spr_sonic_jog, 0.20, 0, 7, 0, -1, "", 0)
			anim_set("FAST_JOG", spr_sonic_fastjog, 0.20, 0, 7, 0, -1, "", 0)
			anim_set("SLOW_RUN", spr_sonic_slowrun, 0.20, 0, 7, 0, -1, "", 0)
			anim_set("FAST_RUN", spr_sonic_fastrun, 0.20, 0, 7, 0, -1, "", 0)
			anim_set("SPINDASH", spr_sonic_spindash, 0.20, 0, 7, 4, -1, "", 0)
			anim_set("CROUCH", spr_sonic_crouch, 0.20, 0, 3, 3, 0, "", 0)
			anim_set("CROUCH_END", spr_sonic_crouch_end, 0.20, 0, 2, 2, 0, "IDLE", 0)
		}
	}
}