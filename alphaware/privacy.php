<?php 
	include("function/login.php");
	include("function/customer_signup.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Ukir-Q</title>
	<link rel="icon" href="img/logo.jpg" />
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
			<ul>
				<li><a href="#signup"   data-toggle="modal">Sign Up</a></li>
				<li><a href="#login"   data-toggle="modal">Login</a></li>
			</ul>
	</div>
	
	<div id="login" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:400px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
				<h3 id="myModalLabel">Login...</h3>
			</div>
				<div class="modal-body">
					<form method="post">
					<center>
						<input type="email" name="email" placeholder="Email" style="width:250px;">
						<input type="password" name="password" placeholder="Password" style="width:250px;">
					</center>
				</div>
			<div class="modal-footer">
				<input class="btn btn-primary" type="submit" name="login" value="Login">
				<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
					</form>
			</div>
		</div>
	
	<div id="signup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:700px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
					<h3 id="myModalLabel">Sign Up Here...</h3>
				</div>
					<div class="modal-body">
						<center>
					<form method="post">
						<input type="text" name="firstname" placeholder="Firstname" required>
						<input type="text" name="mi" placeholder="Middle Initial" maxlength="1" required>
						<input type="text" name="lastname" placeholder="Lastname" required>
						<input type="text" name="address" placeholder="Address" style="width:430px;"required>
						<input type="text" name="country" placeholder="Province" required>
						<input type="text" name="zipcode" placeholder="ZIP Code" required maxlength="4">
						<input type="text" name="mobile" placeholder="Mobile Number" maxlength="11">
						<input type="text" name="telephone" placeholder="Telephone Number" maxlength="8">
						<input type="email" name="email" placeholder="Email" required>
						<input type="password" name="password" placeholder="Password" required>
						</center>
					</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-primary" name="signup" value="Sign Up">
					<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
				</div>
					</form>
			</div>
	
	<br>
<div id="container">
	<div class="nav">	
			 <ul>
				<li><a href="index.php">   <i class="icon-home"></i>Home</a></li>
				<li><a href="product.php"> 			 <i class="icon-th-list"></i>Product</a></li>
				<li><a href="aboutus.php">   <i class="icon-bookmark"></i>About Us</a></li>
				<li><a href="contactus.php"><i class="icon-inbox"></i>Contact Us</a></li>
				<li><a href="privacy.php"><i class="icon-info-sign"></i>Privacy Policy</a></li>
				<li><a href="faqs.php"><i class="icon-question-sign"></i>FAQs</a></li>
			</ul>
	</div>
	

	
	
		<div id="content">
			<legend><h3>Privacy Policy</h3></legend>
				<p>Dihalaman ini adalah kumpulan dari beberapa informasi tentang dunia industri mebel jepara serta highlight produk2 kami. Kami berpikir informasi ini akan anda perlukan meskipun anda tidak membeli produk mebel dari kami, katanya sharing is caring, and we do care about you…anda bisa mendapak informasi tentang bagaimana mebel jepara dibuat, info tentang bahan baku baik kayu maupun finishing dan bahan penunjang lainnya, atau informasi tentang promo produk yang kami adakan. kalau sudah tahu, anda bisa memilih / membeli produk mebel dengan bijak.
				</p>
			<hr>
				<h4>Tips dan Tricks</h4>
					<p>Di kategori ini kami berbagi info yang mungkin akan paling berguna bagi anda para DIYers, misal jika anda mau “memodifikasi” tampilan mebel yang ada dirumah anda dengan cat wrna warni, atau mau reparasi perabot yang rusak, atau bahkan mau mulai bikin mebel sendiri. Disini kami bagi pengalaman tentang hal2 yang berhubungan dengan pembuatan mebel dan pemasarannya.</p>
			<hr>
				<h4>News n Info</h4>
					<p>Kalau disini, kami berbagi berita dunia permebelan dan produk review. bagaimana cara belanja mebel online supaya tidak tertipu atau cara memilih produk mebel yang baik biar bisa beli sesuai dengan harapan anda. Semua informasi yang ada disini adalah berdasarkan pengalaman kami sebagai pelaku industri, jadi mungkin informasi yang anda dapatkan dari sini akan berbeda dengan yang anda dapat dari website lain. itu wajar, semua orang punya opini, tugas anda adalah menyaring dan ambil yang sesuai dengan pemikiran anda.

</p>
					<p>Jadi…silahkan menelusuri halaman per halaman website kami ini. tinggalkan komentar jika anda berkenan selama tidak mengganggu pengguna yang lain. no active link allowed…terima kasih</p>
			<hr>
				
			
		</div>
	<br />
</div>
	<br />
	<div id="footer">
		<div class="foot">
			<label style="font-size:17px;"> Copyrght &copy; </label>
			<p style="font-size:25px;">Alphaware Inc. 2015</p>
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