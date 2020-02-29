<?php 
$hargabeli = array("10","11","3");
$hargajual = array("2","20","5");

 
if($hargajual > $hargabeli){
	$profit = $hargajual-$hargabeli;
	echo "Anda Mendapat LABA Sebesar = " . $profit;
}elseif($hargabeli > $hargajual){
	$rugi = $hargabeli-$hargajual;
	echo "Anda Mendapat RUGI Sebesar = " . $rugi;
}else{
	echo "Tidak Profit Untuk Hari Ini";
}
?>