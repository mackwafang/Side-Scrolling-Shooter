///explosion(from,to,damage,max radius)
var from = argument[0];
var to = argument[1];
var damage = argument[2];
var r = argument[3];

if (instance_exists(to)) {
    if (!isBetween(from,to,obj_ground)) {
        for (var i = 0; i < instance_number(to); i++) {
            var enemy = instance_find(to,i);
            var dist = point_distance(from.x,from.y,enemy.x,enemy.y);
            if (dist < r) {
                var dmg = round(power(damage,power((r-dist)/r,0.1)))+60;
                print(dmg);
                enemy.enemyHealth -= dmg;
                if (enemy.enemyHealth <= 0) {
                    for(var j = 0; j < 6; j++){
                        var part = instance_create(enemy.x,enemy.y,obj_zombie_part);
                        part.sprite_index = spr_slime_part;
                        part.image_index = irandom(5);
                        part.direction = point_direction(from.x,from.y,enemy.x,enemy.y)+irandom_range(-10,10);
                        part.speed = irandom(damage)/40;
                    }
                }
                var ind = instance_create(enemy.x,enemy.y,obj_dmg_ind);
                score += dmg;
                ind.words = dmg;
                ind.color = yellow;
                ind.hspeed = random_range(-1,1);
                ind.vspeed = -5;
            }
        }
    }
}
return 0;
