///initWeapon
/*SEMI-AUTOMATIC PISTOL*/
global.weapon[0,weaponData.name] = "Semi-Automatic Pistol";
global.weapon[0,weaponData.damage] = 20;
global.weapon[0,weaponData.firingType] = 1;
global.weapon[0,weaponData.recoilClimb] = 10;
global.weapon[0,weaponData.recoilMax] = 30;
global.weapon[0,weaponData.ammo] = 90;
global.weapon[0,weaponData.maxAmmo] = 90;
global.weapon[0,weaponData.bulletSpeed] = 20;
global.weapon[0,weaponData.fireRate] = 3;
global.weapon[0,weaponData.suppressor] = true;
global.weapon[0,weaponData.opticSight] = false;
/*REVOLVER*/
global.weapon[1,weaponData.name] = "Revolver";
global.weapon[1,weaponData.damage] = 60;
global.weapon[1,weaponData.firingType] = 1;
global.weapon[1,weaponData.recoilClimb] = 32;
global.weapon[1,weaponData.recoilMax] = 32;
global.weapon[1,weaponData.ammo] = 0;
global.weapon[1,weaponData.maxAmmo] = 60;
global.weapon[1,weaponData.bulletSpeed] = 30;
global.weapon[1,weaponData.fireRate] = 7;
global.weapon[1,weaponData.suppressor] = true;
global.weapon[1,weaponData.opticSight] = false;
/*BURST RIFLE*/
global.weapon[2,weaponData.name] = "Assault Rifle";
global.weapon[2,weaponData.damage] = 36;
global.weapon[2,weaponData.firingType] = 0;
global.weapon[2,weaponData.recoilClimb] = 6;
global.weapon[2,weaponData.recoilMax] = 30;
global.weapon[2,weaponData.ammo] = 0;
global.weapon[2,weaponData.maxAmmo] = 300;
global.weapon[2,weaponData.bulletSpeed] = 30;
global.weapon[2,weaponData.fireRate] = 4;
global.weapon[2,weaponData.suppressor] = true;
global.weapon[2,weaponData.opticSight] = false;
/*SHOTGUN*/
global.weapon[3,weaponData.name] = "Shotgun";
global.weapon[3,weaponData.damage] = 10; //per pellet times firerate
global.weapon[3,weaponData.firingType] = 1;
global.weapon[3,weaponData.recoilClimb] = 30;
global.weapon[3,weaponData.recoilMax] = 30;
global.weapon[3,weaponData.ammo] = 0;
global.weapon[3,weaponData.maxAmmo] = 30;
global.weapon[3,weaponData.bulletSpeed] = 30;
global.weapon[3,weaponData.fireRate] = 8;
global.weapon[3,weaponData.suppressor] = true;
global.weapon[3,weaponData.opticSight] = false;
/*SUBMACHINE GUN*/
global.weapon[4,weaponData.name] = "Submachine gun";
global.weapon[4,weaponData.damage] = 22;
global.weapon[4,weaponData.firingType] = 0;
global.weapon[4,weaponData.recoilClimb] = 6;
global.weapon[4,weaponData.recoilMax] = 35;
global.weapon[4,weaponData.ammo] = 0;
global.weapon[4,weaponData.maxAmmo] = 450;
global.weapon[4,weaponData.bulletSpeed] = 25;
global.weapon[4,weaponData.fireRate] = 4;
global.weapon[4,weaponData.suppressor] = true;
global.weapon[4,weaponData.opticSight] = false;
/*SNIPER RIFLE*/
global.weapon[5,weaponData.name] = "SNIPER RIFLE";
global.weapon[5,weaponData.damage] = 100;
global.weapon[5,weaponData.firingType] = 1;
global.weapon[5,weaponData.recoilClimb] = 60;
global.weapon[5,weaponData.recoilMax] = 60;
global.weapon[5,weaponData.ammo] = 0;
global.weapon[5,weaponData.maxAmmo] = 30;
global.weapon[5,weaponData.bulletSpeed] = 50;
global.weapon[5,weaponData.fireRate] = 20;
global.weapon[5,weaponData.suppressor] = true;
global.weapon[5,weaponData.opticSight] = false;
/*AUTOMATIC PISTOL*/
global.weapon[6,weaponData.name] = "Automatic Pistol";
global.weapon[6,weaponData.damage] = 20;
global.weapon[6,weaponData.firingType] = 0;
global.weapon[6,weaponData.recoilClimb] = 5;
global.weapon[6,weaponData.recoilMax] = 30;
global.weapon[6,weaponData.ammo] = 0;
global.weapon[6,weaponData.maxAmmo] = 150;
global.weapon[6,weaponData.bulletSpeed] = 20;
global.weapon[6,weaponData.fireRate] = 3;
global.weapon[6,weaponData.suppressor] = true;
global.weapon[6,weaponData.opticSight] = false;

/*GRENADE LAUNCHER*/
global.weapon[7,weaponData.name] = "GRENADE LAUNCHER";
global.weapon[7,weaponData.damage] = 300;
global.weapon[7,weaponData.firingType] = 0;
global.weapon[7,weaponData.recoilClimb] = 40;
global.weapon[7,weaponData.recoilMax] = 40;
global.weapon[7,weaponData.ammo] = 0;
global.weapon[7,weaponData.maxAmmo] = 15;
global.weapon[7,weaponData.bulletSpeed] = 15;
global.weapon[7,weaponData.fireRate] = 15;
global.weapon[7,weaponData.suppressor] = false;
global.weapon[7,weaponData.opticSight] = false;
for (var i = 0; i < array_height_2d(global.weapon); i++) {
    global.weapon[i,weaponData.ammo] = global.weapon[i,weaponData.maxAmmo];
}