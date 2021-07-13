/// @description anim_apply(AnimationIndex)
/// @param AnimationIndex
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function anim_apply(Animation_Index){
	Animation_Index = argument0;
	if(AnimationIndex != Animation_Index)
	{
		AnimationIndex = Animation_Index
	}
}

/// @description apply_anim(AnimationIndex)
/// @param AnimationIndex
function apply_anim(Animation_Index){
	Animation_Index = argument0;
	anim_apply(Animation_Index)
}