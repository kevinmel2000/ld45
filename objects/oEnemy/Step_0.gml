/// @description Insert description here
// You can write your code in this editor
event_inherited()
if place_meeting(x,y,global.playerId) and global.startedPlaying = true
{
global.livesQty -=1
instance_destroy()
}

if x > 30 and x <580
and y > 120 and y <560
and draggable = false
{
global.goalEnemies = true
/*if !instance_exists(pointSpecs)
{
instance_create(x,y,pointSpecs)	
}*/
}
else
{
global.goalPoints = false	
}