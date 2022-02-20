///@arg string
///@arg substr1
///@arg substr2
///@arg value
///@arg number*
function string_substr_isolate(){
	var STRING = argument[0]
	var ss1 = argument[1]
	var ss2 = argument[2]
	var VALUE = argument[3]
	if(argument_count > 4){
		var ISNUMB = argument[4]
	}else{
		var ISNUMB = false
	}
	
	var FINALSTRING = ""
	var sPOS = 0
	var ePOS = 0
	
	if(ss1 = ss2){
		repeat(VALUE){
			var FINALSTRING = ""
			var sPOS = string_pos_ext(ss1,STRING,0 + ePOS)
			var ePOS = string_pos_ext(ss1,STRING,0 + (sPOS+1))
			
			var dPOS = ePOS - (sPOS)
			
			var proc = 0
			repeat(dPOS - 1){
				var cCHAR = string_char_at(STRING,sPOS + 1 + proc)
				FINALSTRING += cCHAR
				proc += 1
			}
		}
	//	return FINALSTRING;
	}else{
		repeat(VALUE){
			var FINALSTRING = ""
			var sPOS = string_pos_ext(ss1,STRING,0 + ePOS)
			var ePOS = string_pos_ext(ss2,STRING,0 + (sPOS+1))
			
			var dPOS = ePOS - (sPOS)
			
			var proc = 0
			repeat(dPOS - 1){
				var cCHAR = string_char_at(STRING,sPOS + 1 + proc)
				FINALSTRING += cCHAR
				proc += 1
			}
		}
	}
	if(ISNUMB = false){
	return FINALSTRING;
	}else if(ISNUMB = true){
		if(string_digits(FINALSTRING) = ""){
			return 0;
		}else{
			return real(string_digits(FINALSTRING));
		}
	}
}