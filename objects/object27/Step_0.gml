/// @description Insert description here
// You can write your code in this editor

light[| eLight.X] = mouse_x;
light[| eLight.Y] = mouse_y;
light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters