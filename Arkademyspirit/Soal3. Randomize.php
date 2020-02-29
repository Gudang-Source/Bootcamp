<!DOCTYPE html>
<html>
<head>
  <title>Randomize - Arkadeny</title>
</head>
<body>

<?php 
 function Randomize($panjang) {

    $karakter = 'TreidoAldeRistivan';
    $panjangkarakter = strlen($karakter);
    $random = '';

    echo "Karakter Awal Adalah : $karakter </br></br>" ;
    echo "Karakter Randomize Adalah : " ;
    

    for ($i = 0; $i < $panjang; $i++) {
        $random .= $karakter[rand(0, $panjangkarakter -1)];
    }
    return $random;
}
echo Randomize(10);
 ?>
</body>
</html>