draw_self();
if(mouseOverTD(x,y,sprite_width,sprite_height)) {
	draw_circle(x,y,range,true);
}
var enemy = instance_nearest(x,y,oPathMover);
if(enemy != noone) {
	if(point_distance(x,y,enemy.x,enemy.y) <= range+(sprite_width/2)) {
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
		
		objectToShoot = enemy;
		if(mouseOverTD(x,y,sprite_width,sprite_height)) {
			draw_line(x,y,enemy.x,enemy.y);
		}	
	} else {
		shooting = false;
		objectToShoot = noone;
	}
}