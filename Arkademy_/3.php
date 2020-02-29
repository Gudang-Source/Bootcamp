<?php
$string = "Treido";
if ( ctype_alpha($string)){
  $seed = str_split($string);
  shuffle($seed);
$rand = '';
foreach (array_rand($seed, 5) as $k) $rand .= $seed[$k];
echo $rand;
}
else{
	echo "Input harus alpha";
}
?>
