<?php            
function ex01($number){
	$lop = false;
  	$ck =  substr($number,0,1);
	if($ck=='-'){
		$lop = true;
		$number = substr($number,1);
	}
	if(strpos($number,".")){
		if(substr($number,strpos($number,".")+1,1)>=5){
		$number = substr($number,0,strpos($number,".")); 
		$number = $number+1; 	
	}else{
		$number = substr($number,0,strpos($number,".")); 
	}
	}
	$sum = 0;
	do {
      $sum += $number % 10;
    }while ($number = (int) $number / 10);
	if($lop==true){
	$sum  = '-'.$sum ;
	}
    return $sum;
}