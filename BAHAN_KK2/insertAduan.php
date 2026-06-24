<?php
include ('connection.php');
	if(isset($_POST['submit'])){
		$perkara = $_POST['perkara'];
		$aduan = $_POST['aduan'];
		$insertQuery = "INSERT INTO aduan (perkara,aduan)
		VALUES ('[$perkara','$aduan')";
		if(mysqliquery($conn,$insertQuery)){
			echo "Succesful";
		}
		else {
			echo "Something is wrong".$insertQuery.".mysqli_error($conn);
		}
		mysqli_error($conn);
	}
	?>