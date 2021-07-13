
 piece_slice_1 = lerp_approach(piece_slice_1, (ID_HEIGHT*(DIS_HEIGHT/ID_HEIGHT)), 0.05, 0.1);
 piece_slice_2 = lerp_approach(piece_slice_2, 0, 0.05, 0.1);
 
 if(piece_slice_1 == (ID_HEIGHT*(DIS_HEIGHT/ID_HEIGHT)) && piece_slice_2 == 0)
 {
    instance_destroy();
 }

