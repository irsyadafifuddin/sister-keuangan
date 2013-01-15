<?php 
if (isset($_SESSION['id_admin']))
{
?>
	<body onLoad="document.form.elements['kode_rekening'].focus();">
	<div class="post">
		<div class="entry">
			<h2 align="center"><strong>Perkiraan</strong></h2>
			<p align="center">&nbsp;</p>
			<p>
			<form action="?page=./laporan/perkiraan" method="post" name="form">
			
			</form>
			
			<br />
			<!---MENAMPILKAN TABEL PERKIRAAN--->
			
			<table class="datatable">
			<tr>
				<th>Kode Rekening</th><th>Nama Rekening</th><th>Awal Debet</th><th>Awal Kredit</th>
			</tr>
			<?php
			$total=mysql_fetch_array(mysql_query("select sum(awal_debet) as tot_awal_debet,sum(awal_kredit) as tot_awal_kredit from tabel_akun order by kode_rekening asc"));
			$query=mysql_query("select * from tabel_akun order by kode_rekening asc");
			while($row=mysql_fetch_array($query)){
				?>
				<tr>
					<td align="center"><?php echo $row['kode_rekening'];?></td><td><?php echo $row['nama_rekening'];?></td>
					<td align="right"><?php echo $row['awal_debet'];?></td><td align="right"><?php echo $row['awal_kredit'];?></td>
					
				</tr>
				<?php
			}
			?>
			<tr>
				<td colspan="2" align="center"><strong>JUMLAH</strong></td>
				<td align="right"><strong><?php echo number_format($total['tot_awal_debet'],2,'.',','); ?></strong></td>
				<td align="right"><strong><?php echo number_format($total['tot_awal_kredit'],2,'.',','); ?></strong></td>
				<td colspan="2" align="center">
				<?php
				//untuk menghitung balance
				if(!empty($total['tot_awal_debet']) || !empty($total['tot_awal_kredit'])){
					if($total['tot_awal_debet']==$total['tot_awal_kredit']){
						echo "<font color='#0033FF'>Balance</font>";
					}else{
						echo "<font color=red>Not Balance : ".abs($total['tot_awal_debet']-$total['tot_awal_kredit'])."</font>";
					}
				}
				?>
				</td>
			</tr>
			</table>
			
			
			</p>
		</div>
	</div>
	</body>
	
	
	<?php
	if(isset($_POST['kode_rekening'])){
	
		$kode_rekening=$_POST['kode_rekening'];
		$nama_rekening=ucwords($_POST['nama_rekening']);
		
		$awal_debet=$_POST['awal_debet'];
		$awal_kredit=$_POST['awal_kredit'];
		
		$query=mysql_query("insert into tabel_master(kode_rekening,nama_rekening,tanggal_awal,awal_debet,awal_kredit,posisi,normal) 
							values('$kode_rekening','$nama_rekening','$tanggal','$awal_debet','$awal_kredit')");
		
		if($query){
			?><script language="javascript">alert("Data sudah tersimpan")</script><?php
			?><script language="javascript">document.location.href="?page=./setup/perkiraan"</script><?php
		}else{
			echo mysql_error();
		}
		echo "masuk";
	}else{
		unset($_POST['kode_rekening']);
	}
	?>
	
<?php 
}else{
	echo "Forbidden Access!";
}
?>