///createLimbs(type,speed,direction)
type = argument0;
Speed = argument1;
dir = argument2;
if(type == 0){
    for(i = 0; i < 6; i++){
        with(instance_create(x,y,obj_zombie_part)){
            switch(other.object_index) {
                case obj_zombie:
                    sprite_index = spr_zombie_part;
                    break;
                case obj_slime:
                    sprite_index = spr_slime_part;
                    break;
            }
            if (irandom(4) == 0) {sprite_index = spr_slime_part;}
            image_index = other.i;
            direction = other.dir;
            speed = random(other.Speed);
        }
    }
}