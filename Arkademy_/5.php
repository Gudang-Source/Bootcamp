<?php
// Jika ERROR di jalankan di LOCALHOST COBA di https://www.onlinegdb.com/
// Di jalankan di https://www.onlinegdb.com/
function print_square($n)
{
	$i;
	$j;
	for ($i = 1; $i <= $n; $i++)
	{
		for ($j = 1; $j <= $n; $j++)
		{
			if ($i == 1 || $i == $n ||
				$j == 1 || $j == $n)
				print ("*");
			else
				print (" ");
				print (" ");
		}
		echo "\n";
	}

}
	$rows = 4;
	print_square($rows);
?>
