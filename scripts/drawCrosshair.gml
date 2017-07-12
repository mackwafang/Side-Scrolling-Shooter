///drawCrosshair(recoil)
var xv, yv, hv, wv, xx, yy;
xv = view_xview[0];
yv = view_yview[0];
hv = view_hport[0];
wv = view_wport[0];

xx = windowXRatio*(mouse_x-xv);
yy = windowYRatio*(mouse_y-yv);
var spread = argument0;
draw_sprite_ext(spr_crosshair,0,xx+spread,yy,1,1,0,white,1);
draw_sprite_ext(spr_crosshair,0,xx,yy-spread,1,1,90,white,1);
draw_sprite_ext(spr_crosshair,0,xx-spread,yy,1,1,180,white,1);
draw_sprite_ext(spr_crosshair,0,xx,yy+spread,1,1,270,white,1);