/// @description Insert description here
// You can write your code in this editor

light[| eLight.X] = obj_buddy.x;
light[| eLight.Y] = obj_buddy.y;
light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters