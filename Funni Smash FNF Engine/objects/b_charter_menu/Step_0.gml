siner1 += 1

funi_yoff = sin(siner1/60) * 2

var proc = 0
repeat(array_length(menus)){
	var w = 600/array_length(menus)
	if((mouse_x >= 55 + w*proc && mouse_x <= 55 + w*proc + w) && (mouse_y >= funi_yoff + camera.y + 30 && mouse_y <= funi_yoff + camera.y + 80) && mouse_check_button_pressed(mb_left)){
		_current_menu = proc
	}
	proc += 1
}

if(_extend_amount != _extend_target){
	var ed = _extend_target - _extend_amount
	_extend_amount += ed/_extend_duration
}

if(keyboard_check_pressed(vk_backspace)){
	_extend_target = real(!_menu_is_extended)
	_menu_is_extended = !_menu_is_extended
}

switch(_current_menu){
	default:
	with(b_charter_menu_button){
		if(linked_menu != b_charter_menu._current_menu && b_id >= array_length(b_charter_menu.buttons[b_charter_menu._current_menu])){
			instance_destroy(self)
		}
	}
	var proc = 0
	repeat(array_length(buttons[_current_menu])){
		var BT = array_get(buttons[_current_menu],proc)
		var BW = (110 < string_width(BT) ? string_width(BT) : 110)
		var BH = 30
		if(!variable_instance_exists(self,"button_"+string(proc)) || !instance_exists(variable_instance_get(self,"button_"+string(proc)))){
			var b = instance_create_depth((55),(29 + (BH*2) + ((BH) * proc)), depth - 10, b_charter_menu_button)
			b.width = BW
			b.height = BH
			b.text = BT
			b.text_off_x = 0//BW/5
			b.text_off_y = 0//-BW/4
			b.b_id = proc
			b.linked_menu = _current_menu
			variable_instance_set(self,"button_"+string(proc),b)
		}else if(instance_exists(variable_instance_get(self,"button_"+string(proc)))){
			var VB = variable_instance_get(self,"button_"+string(proc))
			if(VB.linked_menu != _current_menu){
				VB.width = BW
				VB.height = BH
				VB.text = BT
				VB.linked_menu = _current_menu
			}
		}
		
		proc += 1
	}
	break;
}