/// @description  Spawn the checkpoints in the following difficulties

    if((global.gameDifficult == DIF_VERY_EASY || global.gameDifficult ==  DIF_EASY || global.gameDifficult ==  DIF_NORMAL || global.gameDifficult ==  DIF_HARD))
    {
        obj_create(obj_checkpoint);
    };

