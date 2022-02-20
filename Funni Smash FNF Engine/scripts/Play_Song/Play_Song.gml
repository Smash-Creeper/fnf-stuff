///@arg song_title
///@arg *difficulty
function Play_Song(){
	var S = argument[0];
	Open_Chart(S);
	room_goto(room_battle);
}