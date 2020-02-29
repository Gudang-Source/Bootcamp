<?php 
	require 'koneksi.php';
 ?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

    <title>Formulir Mahasiswa</title>
  </head>
  <body>
    
    	<div class="container">
    	<h1 class="text-center mt-5">Formulir Mahasiswa</h1>
		  		<form method="post" action="simpan_mahasiswa.php">
		  		<div class="row">
		  		<div class="col">
				  <div class="form-group">
				    <label for="formGroupExampleInput">Nama</label>
				    <input type="text" class="form-control" id="nama" name="nama">
				  </div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">NIM</label>
				    <input type="text" class="form-control" id="nim" name="nim">
				  </div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">Fakultas</label>
				    <input type="text" class="form-control" id="fakultas" name="fakultas">
				  </div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">Jurusan</label>
				    <input type="text" class="form-control" id="urusan" name="jurusan">
				  </div>
				  </div>
				  <div class="col">
				  	<div class="form-group">
				  	  <label for="formGroupExampleInput2">Jenis Kelamin</label>
				  		<select class="form-control">
					  		<option selected="">Pilih..</option>
					  		<option value="L">Laki-Laki</option>
					  		<option value="P">Perempuan</option>
						</select>
					</div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">Tempat Lahir</label>
				    <input type="text" class="form-control" id="tempatLahir" nama="tempatLahir">
				  </div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">Tanggal Lahir</label>
				    <input type="text" class="form-control" id="tglLahir" name="tglLahir">
				  </div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">Alamat</label>
				    <textarea class="form-control" id="alamat" name="alamat" rows="3"></textarea>
				  </div>
				  
				  
				</div>
				</div>
				<div class="text-center">
				  	<button type="submit" class="btn btn-primary">Submit</button>
				  </div>
				</form>		
		</div>
	</div>









    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="asset/js/jquery-3.4.1.min.js"></script>
  </body>
</html>