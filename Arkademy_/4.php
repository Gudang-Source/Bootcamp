<?php
$string = "Orang jahat adalah orang baik yang tersakiti";
$vowels = array("a", "e", "i", "o", "u", "A", "E", "I", "O", "U");
$string = str_replace($vowels, "i", $string, $x);
if ($x > 0) {
  echo "$string <br>";
} else {
  echo "Tidak ada huruf vokal!";
}
?>
