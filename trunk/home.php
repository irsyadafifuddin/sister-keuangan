<?php session_start();

	//untuk waktu
	$tanggal=date("d/m/Y");

	//untuk koneksi database
	include "./include/conn.php";
	
	$koneksi=open_connection();

if (isset($_SESSION['id_admin']))
{
	$id_admin=$_SESSION['id_admin'];
?>

	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Sistem Informasi Keuangan Sekolah :: Home</title>
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
	<script language="javascript" src="./include/jam.js"></script>
	
	</head>
	<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="#">Sistem Informasi Keuangan Sekolah</a></h1>
				<p>Demi Mempermudah Proses Pengelolaan Keuangan Sekolah </p>
			</div>
			<div>
				<?php include "menu.php";?>
			</div>
		</div>
		
		
		
		<div id="page">
			<div id="page-bgtop">
				<div id="page-bgbtm">
					<div id="content">
					
					
						<?php 
						
			// Menyatakan variabel sudah diset atau tidak. Jika variabel sudah diset makan variavel akan mengembalikan nilai true
			
						if(isset($_GET['page'])){
						
							$page=$_GET['page'];
							
							
							$halaman="$page.php";
							
							if(!file_exists($halaman) || empty($page)){
								include "welcome.php";
							}else{
								include "$halaman";
							}
							
						}else{
							include "welcome.php";
						}
						?>
						
						
						<div style="clear: both;">&nbsp;</div>
					</div>
					
					<div style="clear: both;">&nbsp;</div>
				</div>
			</div>
		</div>
		<!-- end #page -->
	</div>
	<div id="footer">
		<p>Copyright &copy; <a href="http://romadhoni.me">Sisfor Project/</a> All rights reserved. Design by <a href="http://www.w3schools.com">CSS Open Source</a>.</p>
	</div>
	<!-- end #footer -->
	</body>
	</html>

<?php 

}else{
	?><script language="javascript">document.location.href="index.php?<?php echo paramEncrypt('status=forbiden')?>"</script><?php
}
?>