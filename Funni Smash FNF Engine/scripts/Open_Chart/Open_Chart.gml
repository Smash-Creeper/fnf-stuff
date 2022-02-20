///@arg song
///@arg difficulty*
function Open_Chart(){
	var S = argument[0];
	var cep = (debug_mode ? "" : "charts\\")
	global.chart_file = global.chart_save_path + cep + S + ".chart"
	global.event_file = global.chart_save_path + cep + S + ".event"
}