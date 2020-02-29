<?php 

include 'koneksi.php';

if (isset($_POST)){
	$nim = $_POST['nim'];
	$nama = $_POST['nama'];
	

	$fail = '';

	if (empty($nim)){
		$fail = 'NIM tidak boleh kosong';
	}

	if (empty($nama)){
		$fail = 'NAMA tidak boleh kosong';
	}

	if($fail){
		header("location: index.php?fail=$fail");
		exit();
	}

	// try{
	// mysqli_query($con, "INSERT INTO tb_mahasiswa(nim, nama) VALUES('{$nim}', '{$nama}')");
	// }
	// catch{
	// header("location: index.php?nimtidakbolehsama");
	// }

	$query = "INSERT INTO tb_mahasiswa(nim, nama) VALUES('{$nim}', '{$nama}')";
	header("location: index.php");
	mysqli_query($con, $query);
	header("location: tampil_mahasiswa.php");
}