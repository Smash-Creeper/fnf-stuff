//////////////////////////////////
//                              //
//   bktGlitch 1.3.2            //
//    Written by Jan Vorisek    //
//     @blokatt | blokatt.net   //
//      jan@blokatt.net         //
//       31/01/2021             //
//                              //
//     "Here we go again."      //
//							 	//
//////////////////////////////////

/*
    See Draw GUI for setup instructions.
    
    Easier example available in objSimpleExample, change the room order to see it in action.
*/

// You can init the shader here manually if you want, otherwise it will be done automatically the first
// time you run BktGlitch_activate(), which might take a few frames.
bktglitch_init()
application_surface_draw_enable(false); // disabling automatic redrawing of the application surface
display_set_gui_size(1280, 720); // hard-coding GUI size to HD

__bktgtlich_ui_init();