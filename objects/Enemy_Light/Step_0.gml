/// @description Insert description here
// You can write your code in this editor

light[| eLight.X] = par_enemy.x;
light[| eLight.Y] = par_enemy.y;
light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters