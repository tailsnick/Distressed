/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y ,obj_player)){
	//if textbox not created yet, make one
	
	if(myTextBox == noone) {
	myTextBox= instance_create_layer (x,y, "Text", obj_textbox);
	myTextBox.text = myText;
	myTextBox.creator = self;
	
}
} else {
	if (myTextBox != noone) { 
	instance_destroy (myTextBox);
	myTextBox = noone;
}

}