///fireWeapon(burst)
var shoot = argument[0];
assert(0 <= shoot && shoot <= 1);
var gunX, gunY, fireType;
var flashAdjust = 0;
gunX = global.gunFlashCoordX[global.currentWeapon];
gunY = global.gunFlashCoordY[global.currentWeapon];
if(image_yscale == -1) {
    flashAdjust = -gunY*2;
}
switch(getWeaponData(weaponData.firingType)) {
    case 0:
        fireType = mouse_check_button(mb_left);
        break;
    case 1:
        fireType = mouse_check_button_pressed(mb_left);
        break;
}
if (shoot || fireType) {
    if(getWeaponData(weaponData.ammo) != 0) {
        if (fire > 0) {
            fire -= getWeaponData(weaponData.fireRate);
            if(getWeaponData(weaponData.ammo) != 0) {
                setWeaponData(weaponData.ammo,getWeaponData(weaponData.ammo)-1);
            }
            var xx, yy, mouseDist;
            xx = x+lengthdir_x(point_distance(x,y,x+gunX,y+gunY+flashAdjust),
                gunDir+point_direction(x,y,x+gunX,y+gunY+flashAdjust));
            yy = y+lengthdir_y(point_distance(x,y,x+gunX,y+gunY+flashAdjust),
                gunDir+point_direction(x,y,x+gunX,y+gunY+flashAdjust));
            mouseDist = point_distance(xx,yy,mouse_x,mouse_y);
            audio_play_sound(snd_gun,1,false);
            if (!getWeaponData(weaponData.suppressor)) {
                part_type_orientation(flashSys,gunDir,gunDir,0,0,0);
                part_particles_create(flashSys,xx,yy,flashPart,1);
            }
            if(!burst && global.currentWeapon == 2) {
                burst = true;
                burstAmmo = 2;
            }
            if (burst || global.currentWeapon != 3) {
                if (burstAmmo > 0) {
                    burstAmmo--;
                }
                else {
                    burst = false;
                }
                createBullet(xx,yy,getWeaponData(weaponData.damage),
                    getWeaponData(weaponData.bulletSpeed),
                    point_direction(x,y+gunY,mouse_x,mouse_y)+(recoil*random_range(-1,1)/4));
            }
            else {
                for (var i = 0; i < getWeaponData(weaponData.fireRate); i++) {
                    createBullet(xx,yy,getWeaponData(weaponData.damage),
                        getWeaponData(weaponData.bulletSpeed),
                        point_direction(x,y+gunY,mouse_x,mouse_y)+(random_range(-getWeaponData(weaponData.recoilClimb),getWeaponData(weaponData.recoilClimb))/4))
                }
            }
            if(global.currentWeapon != 1) {
                var casing = instance_create(x,y,obj_casing);
                casing.direction = gunDir+(120+irandom(30))*image_yscale;
                casing.speed = 2;
            }
            else {
                if(getWeaponData(weaponData.ammo) mod 6 == 0) {
                    for (var i = 0; i < 6; i ++) {
                        var casing = instance_create(x,y,obj_casing);
                        casing.direction = gunDir+(120+irandom(30))*image_yscale;
                        casing.speed = 2;
                    }
                }
            }
            if(recoil < getWeaponData(weaponData.recoilMax)) {
                recoil += getWeaponData(weaponData.recoilClimb);
            }
        }
    }
}