<?php 

$DB_Host = 'localhost';
$DBN_Name = 'forum';
$DB_User = 'root';
$DB_Pass = '';

$con = mysqli_connect($DB_Host, $DB_User, $DB_Pass, $DBN_Name);

if(!$con)
{
	echo 'Database tidak dikenal';
	die();
}

function hapus($id_mahasiswa){
	global $con;

	$query = "DELETE FROM tb_mahasiswa where id_mahasiswa = $id_mahasiswa";

	return mysqli_affected_rows($con);
}