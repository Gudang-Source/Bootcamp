<?php
	include("function/session.php");
	include("db/dbconn.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Ukir-Q</title>
	<link rel = "stylesheet" type = "text/css" href="css/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/carousel.js"></script>
	<script src="js/button.js"></script>
	<script src="js/dropdown.js"></script>
	<script src="js/tab.js"></script>
	<script src="js/tooltip.js"></script>
	<script src="js/popover.js"></script>
	<script src="js/collapse.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/scrollspy.js"></script>
	<script src="js/alert.js"></script>
	<script src="js/transition.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="header">
		<img src="img/logo.jpg">
		<label>Ukir-Q</label>
		
			<?php
				$id = (int) $_SESSION['id'];
			
					$query = mysqli_query ($conn, "SELECT * FROM customer WHERE customerid = '$id' ") or die (mysqli_error());
					$fetch = mysqli_fetch_array ($query);
			?>
	
			<ul>
				<li><a href="function/logout.php"><i class="icon-off icon-white"></i>logout</a></li>
				<li>Welcome:&nbsp;&nbsp;&nbsp;<a href="#profile" href  data-toggle="modal"><i class="icon-user icon-white"></i><?php echo $fetch['firstname']; ?>&nbsp;<?php echo $fetch['lastname'];?></a></li>
			</ul>	
	</div>
	
		<div id="profile" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:700px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
					<h3 id="myModalLabel">My Account</h3>
				</div>
					<div class="modal-body">
						<?php
							$id = (int) $_SESSION['id'];
			
								$query = mysqli_query ($conn, "SELECT * FROM customer WHERE customerid = '$id' ") or die (mysqli_error());
								$fetch = mysqli_fetch_array ($query);
						?>
						<center>
					<form method="post">
						<center>
							<table>
								<tr>
									<td class="profile">Name:</td><td class="profile"><?php echo $fetch['firstname'];?>&nbsp;<?php echo $fetch['mi'];?>&nbsp;<?php echo $fetch['lastname'];?></td>
								</tr>
								<tr>
									<td class="profile">Address:</td><td class="profile"><?php echo $fetch['address'];?></td>
								</tr>
								<tr>
									<td class="profile">Country:</td><td class="profile"><?php echo $fetch['country'];?></td>
								</tr>
								<tr>
									<td class="profile">ZIP Code:</td><td class="profile"><?php echo $fetch['zipcode'];?></td>
								</tr>
								<tr>
									<td class="profile">Mobile Number:</td><td class="profile"><?php echo $fetch['mobile'];?></td>
								</tr>
								<tr>
									<td class="profile">Telephone Number:</td><td class="profile"><?php echo $fetch['telephone'];?></td>
								</tr>
								<tr>
									<td class="profile">Email:</td><td class="profile"><?php echo $fetch['email'];?></td>
								</tr>
							</table>
						</center>
					</div>
				<div class="modal-footer">
					<a href="account.php?id=<?php echo $fetch['customerid']; ?>"><input type="button" class="btn btn-success" name="edit" value="Edit Account"></a>
					<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
				</div>
					</form>
			</div>
		
			
			
		
	<br>
<div id="container">
	
	
	

	<div id="content">
		<div class="nav">
	
			 <ul>
				<li><a href="home.php"><i class="icon-home"></i>Home</a></li>
				<li><a href="product1.php"><i class="icon-th-list"></i>Product</a>
				<li><a href="aboutus1.php"><i class="icon-bookmark"></i>About Us</a></li>
				<li><a href="contactus1.php"><i class="icon-inbox"></i>Contact Us</a></li>
				<li><a href="privacy1.php"><i class="icon-info-sign"></i>Privacy Policy</a></li>
				<li><a href="faqs1.php"><i class="icon-question-sign"></i>FAQs</a></li>
			</ul>
		</div>
		
		<div id="carousel">
			<div id="myCarousel" class="carousel slide">
				<div class="carousel-inner">
					<div class="active item" style="padding:0; border-bottom:0 solid #111;"><img src="img/baner1.jpg" class="carousel"></div>
					<div class="item" style="padding:0; border-bottom:0 solid #111;"><img src="img/baner2.jpg" class="carousel"></div>
					<div class="item" style="padding:0; border-bottom:0 solid #111;"><img src="img/baner3.jpg" class="carousel"></div>
				</div>
					<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
	
	
		<div id="video">
			<video controls autoplay width="445px" height="300px">
				<source src="video/" type="video/mp4">
			</video>
		</div>
		
		<div id="product" style="position:relative; margin-top:30%;">
			<center><h2><legend>Featured Items</legend></h2></center>
			<br />
			
			<?php 
				
				$query = mysqli_query($conn, "SELECT *FROM product WHERE category='feature' ORDER BY product_id DESC") or die (mysqli_error());
				
					while($fetch = mysqli_fetch_array($query))
						{
							
						$pid = $fetch['product_id'];
						
						$query1 = mysqli_query($conn, "SELECT * FROM stock WHERE product_id = '$pid'") or die (mysqli_error());
						$rows = mysqli_fetch_array($query1);
						
						$qty = $rows['qty'];
						if($qty <= 5){
						
						}else{
							echo "<div class='float'>";
							echo "<center>";
							echo "<a href='details.php?id=".$fetch['product_id']."'><img class='img-polaroid' src='photo/".$fetch['product_image']."' height = '300px' width = '300px'></a>";
							echo "".$fetch['product_name']."";
							echo "<br />";
							echo "P ".$fetch['product_price']."";
							echo "<br />";
							echo "<h3 class='text-info' style='position:absolute; margin-top:-90px; text-indent:15px;'> Size: ".$fetch['product_size']."</h3>";
							echo "</center>";
							echo "</div>";
						}
							
						}
			?>
		</div>
		
		
	</div>

		<br />
</div>
<br />
	<br />


	<div id="container">
			<center><h2><legend>Perusahaan Mebel Ukir-Q</legend></h2></center>
				<p>Kedai Mebel adalah salah satu dari sekian banyak perusahaan mebel jepara yang memproduksi mebel model minimalis maupun mebel klasik ukiran jepara. Perusahaan kami berdiri sejak tahun 2010 dan berkembang hingga sekarang, semua berkat kerja keras kami dan kepercayaan konsumen terhadap kualitas produk mebel yang telah kami hasilkan. Berawal dari sebuah “brak” atau tempat produksi mebel rumahan skala gurem, yang kemudian berkembang sedikit demi sedikit berkat dukungan dan bantuan teman2 pengusaha mebel jepara lainnya. Hubungan yang baik dengan perusahaan lain menjadikan kami yang masih kecil mampu menangani pesanan dalam jumlah massal sekalipun. Industri mebel jepara pada dasarnya adalah satu kesatuan, meskipun dijalankan oleh banyak sekali perusahaan.
				</p>
			<hr>
				<h4>Alamat Kami</h4>
					<p>Perusahaan mebel jepara kami berlokasi di kota Jepara, 2 jam perjalanan ke arah utara dari ibu kota jawa tengah Semarang. Kantor operasional kami berada di Desa Bawu Rt 27 Rw 08 Kecamatan Batealit Kabupaten Jepara, sedangkan fasilitas produksi kami berada di desa Langon Rt 01 Rw 01 kecamatan Taunan Kabupaten Jepara Jawa Tengah.</p>

					<p>Jepara adalah sebuah kota yang penuh dengan budaya pengolahan dan ukiran kayu. Sebuah budaya yang memberikan kami pengalaman lebih banyak dalam hal pengolahan kayu di bandingkan daerah lain di indonesia. Jika anda ada waktu silahkan datang ke Jepara dan anda akan lihat jika mebel disini bukan hanya sebuah industri, tapi salah satu jalan hidup.</p>
			<hr>
				<h4>Produk Kami</h4>
					<p>Kami memproduksi seluruh mebel untuk keperluan Rumah, Hotel, villa, Restoran, perkantoran dan lainnya yang hadir dengan berbagai model dan pilihan. Semua produk kami menggunakan bahan utama Kayu Jati, Namun kami tidak menutup kemungkinan untuk penggunaan material lain seperti kayu Mahoni, Mindi, bayur atau jenis kayu tropis yang bisa di pergunakan untuk pembuatan mebel lainnya.

</p>
					<p>Kami juga menerima order Pesanan Khusus dengan design yang tidak ada di pasaran umum. Bahkan sebenarnya, kebanyakan pesanan konsumen yang kami tangani adalah custom made, produk yang kami punya hanya dijadikan referensi saja oleh konsumen kami.</p>

					<p>Target pasar perusahaan mebel jepara kami adalah seluruh Pulau di Indonesia dan Asia pada umumnya. Hal ini di mungkinkan karena kami mempunyai ikatan hubungan yang sangat baik dengan Jasa Kargo atau juga Shipping Forwarder di Jawa Tengah yang memungkinkan kami untuk mengirimkan barang pesanan konsumen kami di seluruh area di Asia. Pada perkembangannya sekarang kami telah beberapa kali mengirimkan pesanan untuk konsumen eropa, amerika dan beberapa ke negara arab. Hal ini ditunjang dengan adanya website berbahasa inggris Indonesian furniture factory kami.</p>

					<p>Adalah sebuah kehormatan bagi kami atas kunjungan anda ke lokasi produksi kami di jepara, mari kita komunikasikan jadwal terlebih dahulu agar tidak ada kesalah pahaman akan waktu. Terima kasih atas kunjungan anda ke website sederhana kami ini dan silahkan menjelajahi koleksi produk mebel jepara kami.</p>
			
				
		</div>
	<div id="footer">
		<div class="foot">
			<label style="font-size:17px;"> Copyright &copy; </label>
			<p style="font-size:25px;">Pro WEB, 2019</p>
		</div>
			
			<div id="foot">
				<h4>Links</h4>
					<ul>
						<a href="http://www.facebook.com/alphaware"><li>Facebook</li></a>
						<a href="http://www.twitter.com/alphaware"><li>Twitter</li></a>
						<a href="http://www.pinterest.com/alphaware"><li>Pinterest</li></a>
						<a href="http://www.tumblr.com/alphaware"><li>Tumblr</li></a>
					</ul>
			</div>
	</div>
</body>
</html>