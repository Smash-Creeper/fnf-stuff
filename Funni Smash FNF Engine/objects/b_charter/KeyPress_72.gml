var df = arrow_speed
arrow_speed = get_integer("Arrow Speed:",string(arrow_speed))
arrow_speed = (arrow_speed = undefined ? df : arrow_speed)
global.arrow_speed = arrow_speed
show_debug_message(string(arrow_speed))
show_debug_message(string(global.arrow_speed))