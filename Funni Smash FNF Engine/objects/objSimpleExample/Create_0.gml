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

// You can init the shader here manually if you want, otherwise it will be done automatically the first
// time you run bktglitch_activate(), which might take a few frames.
// bktglitch_init()
application_surface_draw_enable(false); //disabling automatic redrawing of the application surface
display_set_gui_size(1280, 720); //making sure the GUI layer stays always the same size

ballTimestep = 0.0;
ballTime = 0.0;