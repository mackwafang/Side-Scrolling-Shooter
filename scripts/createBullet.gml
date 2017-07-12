///createBullet(x,y,damage,speed,direction)
var xx, yy;
xx = argument[0];
yy = argument[1];
var bullet;
switch(global.currentWeapon) {
    case 7:
        bullet = instance_create(xx,yy,obj_grenade);
        bullet.explodeOnContact = true;
        bullet.radius = 64;
        bullet.fuseTime = 300;
        break;
    default:
        bullet = instance_create(xx,yy,obj_bullet)
        break;
}
bullet.damage = argument[2];
bullet.speed = argument[3];
bullet.direction = argument[4];
if (global.currentWeapon == 5) {
    bullet.maxPierce += 2;
}