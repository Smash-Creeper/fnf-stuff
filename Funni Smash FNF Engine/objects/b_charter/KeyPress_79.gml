Open_Chart_File();

var _buffer = buffer_load(global.chart_file);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)

var _loaded_data = json_parse(_string)

var chart = array_pop(_loaded_data)

THE_CHART = chart

var _buffer = buffer_load(global.event_file);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)

var _loaded_data = json_parse(_string)

var chart = array_pop(_loaded_data)

THE_EVENT_CHART = chart

chart_is_loaded = false