/// @description Insert description here
// You can write your code in this editor

light[| eLight.X] = Glow.x;
light[| eLight.Y] = Glow.y;
light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters