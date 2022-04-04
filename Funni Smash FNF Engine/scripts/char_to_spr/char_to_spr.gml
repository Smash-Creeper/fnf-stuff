///@arg char
function char_to_spr(){
	var A = argument[0];
	switch(A){
	case CHARACTER.BF:
	case 0:
	return global.spr_boyfriend
	break;
	case CHARACTER.GF:
	case 2:
	return global.spr_girlfriend
	break;
	case CHARACTER.DAD:
	case 1:
	return global.spr_daddy_dearest
	break;
	case CHARACTER.LEMON:
	case 4:
	return global.spr_lemon
	break;
	}
}