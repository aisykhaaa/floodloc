<?php
//koneksi server dan database
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="floodloc";
	$con=new mysqli($servername,$username,$password,$dbname);

	if($con->connect_error){
		die("Koneksi Gagal".$connect_error);
	}
	
//koneksi tabel
	//$sql=rumusquery;
	$sql="DELETE FROM msadd WHERE districtid='$_GET[id]'";
	$result=$con->query($sql);
		
	if($result){
		?>
		
		<script>
			alert ("Data dihapus");
			window.location.href="districtviewa.php";
			window.location.href="districtviewm.php";
			window.location.href="districtviewv.php";
		</script>
		
		<?php
	} else {
		?>
		
		<script>
			window.location.href="districtviewa.php";
			window.location.href="districtviewm.php";
			window.location.href="districtviewv.php";
		</script>
		
		<?php
	}

?>