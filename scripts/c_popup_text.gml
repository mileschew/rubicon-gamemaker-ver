//c_popup_text(text)
var t = argument0;

var popup = instance_create(x, y, o_textPopup);
popup.text = t;                                                 // assign given text to object

return t;
