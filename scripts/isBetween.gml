///isBetween(from,to,check)
from = argument0;
to = argument1;
check = argument2;

distance = sqrt(sqr(to.x-from.x)+sqr(to.y-from.y));
angle = point_direction(from.x,from.y,to.x,to.y);
for(k = 0; k < distance; k++){
    if(position_meeting(from.x+lengthdir_x(k,angle),from.y+lengthdir_y(k,angle),check)){
        return true;
    }
}
return false;