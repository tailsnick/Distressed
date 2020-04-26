/// @description Insert description here
// You can write your code in this editor
if(myTextBox == noone) {
		myTextBox= instance_create_layer (x,y, "Text", obj_textbox);
		myTextBox.text = myText[0];
		myTextBox.creator = self;
}