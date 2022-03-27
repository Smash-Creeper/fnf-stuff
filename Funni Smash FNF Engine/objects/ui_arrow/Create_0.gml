file_path = "./assets/shared/NOTE_assets"

arrow_state = ARROW_STATE.LEFT
arrow_state_default = arrow_state

arrow_skin = 0

img_timer = 0
img_current = 0

linked_player = noone

pos = 0

_safe_frames = 0
detect_arrow = false
detect_arrow_hold = false

if(linked_player != noone && instance_exists(linked_player)){
	cpu = linked_player.cpu
}

//_self_surface = surface_create(1280,820)

_target_note = noone

dx = camera.x + x
dy = camera.y + y

input_acceptable = true



//input = global.input_up