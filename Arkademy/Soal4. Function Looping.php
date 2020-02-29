<?php

echo "--- Panjang ---<br><br><br>";
		$angka=5;
		if ($angka % 2 == 0)
	{
			echo "Parameter Harus Ganjil";
	}elseif ($angka % 2 != 0)
	 {
		for ($i=1;$i<=$angka;$i++) 
		{
			
		  if($i != 3) 
		  {
		    echo "   * * * * *<br>"; 
		  }else{
		  	echo "   * = = = *<br>";
		  }
		}

		}
?>