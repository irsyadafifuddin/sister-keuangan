<?php
   $db = new mysqli('localhost', 'root' ,'', 'siskeu_db');
	
	if(!$db) {
		echo 'Tidak Dapat Terkoneksi Dengan Database.';
	} else {
	
		if(isset($_POST['queryString'])) {
			$queryString = $db->real_escape_string($_POST['queryString']);
			
			if(strlen($queryString) >0) {

				$query = $db->query("SELECT nama_rekening,kode_rekening FROM tabel_master WHERE kode_rekening LIKE '$queryString%'");
				
				if($query) {
				echo '<ul>';
					while ($result = $query ->fetch_object()) {
	         			echo '<li onClick="fill(\''.addslashes($result->nama_rekening).'\'); fill2(\''.addslashes($result->kode_rekening).'\');">'.$result->kode_rekening.'&nbsp;&nbsp;'.$result->nama_rekening.'</li>';
	         		}
				echo '</ul>';
					
				} else {
					echo 'Error:(';
				}
			} else {
			
			}
		} else {
			echo 'Tidak Dapat Diakses';
		}
	}
?>