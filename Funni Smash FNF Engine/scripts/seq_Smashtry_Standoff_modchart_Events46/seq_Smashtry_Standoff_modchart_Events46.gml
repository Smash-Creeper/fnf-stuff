// Auto-generated stubs for each available event.

function seq_Smashtry_Standoff_modchart_event_create()
{
time = 0	
}

function seq_Smashtry_Standoff_modchart_event_destroy()
{

}

function seq_Smashtry_Standoff_modchart_event_clean_up()
{

}

function seq_Smashtry_Standoff_modchart_event_step()
{
time += 1
if(time = 1){
	with(b_mc_arrowtracker){
		linked_arrow = battle[(x < 640 ? 1 : 0),image_angle]
	}
}
}

function seq_Smashtry_Standoff_modchart_event_step_begin()
{

}

function seq_Smashtry_Standoff_modchart_event_step_end()
{

}

function seq_Smashtry_Standoff_modchart_event_async_system()
{

}