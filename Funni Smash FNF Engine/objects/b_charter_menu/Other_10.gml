menus = ["Song Info", "Charting", "Events", "Sections", "Other"]
buttons[CHARTER_MENU.SONG_INFO] = ["Song Name", "Song Inst", "Song Vocals", "BPM", "Arrow Speed", "Player 1", "Player 2", "GF", "Player 3"]
buttons[CHARTER_MENU.CHARTING] = ["Arrow Length", "Arrow Type", "View Hidden Chart"]
buttons[CHARTER_MENU.EVENTS] = ["Event Type", "Event Value"]
buttons[CHARTER_MENU.SECTIONS] = ["Section Length(Squares)"]
buttons[CHARTER_MENU.OTHER] = [""]

button_types[CHARTER_MENU.SONG_INFO] = [[CHARTER_MENU_TYPE.TEXT,false],[CHARTER_MENU_TYPE.LIST,false],[CHARTER_MENU_TYPE.LIST,false],[CHARTER_MENU_TYPE.TEXT,false],[CHARTER_MENU_TYPE.TEXT,false],[CHARTER_MENU_TYPE.LIST,false],[CHARTER_MENU_TYPE.LIST,false],[CHARTER_MENU_TYPE.LIST,false],[CHARTER_MENU_TYPE.LIST,false]]
button_types[CHARTER_MENU.CHARTING] = []
button_types[CHARTER_MENU.EVENTS] = []
button_types[CHARTER_MENU.SECTIONS] = []
button_types[CHARTER_MENU.OTHER] = []

_current_menu = 0
_current_button = 0
_menu_is_extended = false
_menu_is_extending = false
_extend_amount = 0
_extend_duration = 15
_extend_target = 0
_disabled_buttons = false
_enabled_button = 0


_menu_surf = surface_create(1280,720)
_menu_surf_l2 = surface_create(1280,720)