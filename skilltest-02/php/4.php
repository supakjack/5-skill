<?php
function ex03($X,$K, $Arry){
	$val_arry = array();
	$check = array();
	for($i=0;$i<count($Arry);$i++){
		$check[$i] = array();
		$check[$i]['diff'] = $Arry[$i] - $X;
		$check[$i]['value'] = $Arry[$i];
		if($check[$i]['diff'] <0){
			$check[$i]['diff']  = $check[$i]['diff'] *(-1);	
		}
	}
	$loop = true;
	while($loop){
		$loop = false;
		for($i=0;$i<count($Arry)-1;$i++){
			if($check[$i]['diff'] >$check[$i+1]['diff']){
				$loop = true;
				$tmp = $check[$i];
				$check[$i] = $check[$i+1];
				$check[$i+1] = $tmp; 
			}
		}
	}
	for($i=0;$i<$K;$i++){
			$val_arry[$i] = $check[$i]['value']; 
	}
    return $val_arry;
}