



///draw textbox
draw_sprite(spr_textbox, 0, x,y);



//draw text 
draw_set_font (fnt_text);

//allow text to be "typed out" 
if (charCount< string_length(text[page])){
charCount +=1 
}
textPart= string_copy(text[page],  1, charCount); 
draw_text(x+(boxWidth/2),y+yBuffer,name);


draw_text_ext(x+xBuffer,y+stringHeight+yBuffer, textPart, stringHeight, boxWidth);