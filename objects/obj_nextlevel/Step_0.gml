if (count < 2 and keyboard_check_pressed(vk_space)) {
	count++;
	myTextBox.text = myText[count];
}
else if (count == 2 and keyboard_check_pressed(vk_space)) { 
	instance_destroy (myTextBox);
	instance_destroy(obj_nextlevel);
}