<?php 

	require 'koneksi.php';

		$query0 = mysqli_query($con, "SELECT * FROM tb_mahasiswa");
		$query1 = mysqli_query($con, "SELECT * FROM tb_mahasiswa");
		$query2 = mysqli_query($con, "SELECT * FROM tb_mahasiswa");
		$query3 = mysqli_query($con, "SELECT * FROM tb_mahasiswa");

	$sql = "SELECT NIM,nama FROM tb_mahasiswa";

	$search = isset($_POST["search"]) ? $_POST['search'] : '';
	if(empty($search))
	{
		$search = isset($_GET['search']) ? $_GET['search'] : '';
	}

		$order = isset($_GET['order'])?$_GET['order'] : 'nim';
		$dir = isset($_GET['dir'])?$_GET['dir'] : 'ASC';

	//Limit (pagination)
	
		$perPage = isset($_GET['perPage'])?$_GET['perPage'] : 5;
		$page = isset($_GET['page'])?$_GET['page'] : 1;
		$params = array();

	if(!empty($search))
	{
		$sql .= " WHERE NIM LIKE '%$search%' OR nama LIKE '%$search%'";
		$params['search'] = "search=$search";
	}

	if(!empty($order))
	{
		$sql .= " ORDER BY $order $dir";
		$params['order'] = "order=$order";
		$params['dir'] = "dir=$dir";
	}

		$query = mysqli_query($con, $sql);
		$jumlahData = mysqli_num_rows($query);
		$jumlahHalaman = ceil($jumlahData/$perPage);

	if(!empty($perPage))
	{
		$params['perPage'] = "perPage=$perPage";
	}
	if(!empty($page))
	{
		$offset = $perPage * ($page-1);
		$sql .= " LIMIT $offset,$perPage";
		$query = mysqli_query($con, $sql);
	}else
	{
		$offset = 0;
	}

	$columns = array
					('nim'=>'NIM',
					 'nama' => 'Nama Mahasiswa'
					);


	require 'header.php';
?>


<div class="container">
	<div class="row mt-5">
		<h1 class="text-center">DATA MAHASISWA</h1>

		<nav class="navbar navbar-light bg-light">

		  <form class="form-inline" action="" method="post">
		    <input class="form-control mr-sm-2" type="search" placeholder="Cari" aria-label="Search" name="search">
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="cari">Cari</button>
		  </form>

		</nav>

		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">NO</th>
		      <?php foreach($columns as $field=>$caption) 
		      { 
			      	$params['order']="order=$order";
			      	if($field==$order)
			      	{
			      		$dir=($dir=='ASC')?'DESC':'ASC';
			      	}else
			      	{
			      		$dir='ASC';
			      	}
			      	$params['dir']="dir=$dir";
			      	echo"<th><a href='?". implode($params, '&') . "'>$caption</a></th>";
				}
		      	?>
		    </tr>
		  </thead>
		  <tbody>
		 
		    <?php

		    $no=1; 
		 	while($data = mysqli_fetch_assoc($query)){
		 	?>
		 	<tr>	
		 	<th scope="row"><?= $no++; ?></th>
		      <td><?= $data['NIM']; ?></td>
		      <td><?= $data['nama']; ?></td>
		     <!-- <td><a href="hapus.php?id=<?= $data['id_mahasiswa']; ?>">Hapus</a></td> -->
		 	</tr>
			<?php } 
			?>
		</table>
		<?php 

		echo "Halaman :";

		if ($page > 1) {
			$params['page'] = "page=1";
			echo '<a href="?' . implode($params, '&') . '">Pertama </a>';
		}
		

		if ($page > 1) {
			$sebelumnya = $page;
			$params['page'] = "page=" . --$sebelumnya;
			// print_r($params);
			// exit();
			echo '<a href="?' . implode($params, '&') . '">Sebelumnya </a>';
		}

		for($i=1; $i<$jumlahHalaman; $i++){
			
			if($i == $page){
				$label = $i;
			}else{
				$params['page'] = "page=$i";
				$label = '<a href="?' . implode($params, '&') . '">' . $i . '</a>';
			}

			if($i>1){
				$label = ' ' . $label;
			}
			echo "$label ";
		}


		if ($page < $jumlahHalaman) {
			$berikutnya = $page;
			$params['page'] = "page=" . ++$berikutnya;
			// print_r($params);
			// exit();
			echo '<a href="?' . implode($params, '&') . '">Berikutnya </a>';
		}

		if ($page < $jumlahHalaman) {
			$terakhir['page'] = "page=$jumlahHalaman";
			echo '<a href="?' . implode($terakhir, '&') . '">Terakhir </a>';
		}

		 ?>
	</div>
</div>


<?php require 'footer.php'; ?>