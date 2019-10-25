<?php  
function ex02($A,$B){
	$X = array();
	for($i=0;$i<$A;$i++){
			if($A%($i+1)==$B){
				array_push($X,$i+1);
			}
	}
    return $X;
}