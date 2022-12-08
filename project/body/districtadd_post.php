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
	$districtid=$_POST['districtid'];
	$districtname=$_POST['districtname'];
	$sql="INSERT INTO msadd (districtid, districtname) VALUES ('$districtid', '$districtname')";
	$result=$con->query($sql);
	
	if($result){
		?>
		
		<script>
			//alert ("Data disimpan");
			window.location.href="districtviewa.php";
			window.location.href="districtviewm.php";
			window.location.href="districtviewv.php";
		</script>
		
		<?php
	} else {
		?>
		
		<script>
			alert ("Data disimpan");
			window.location.href="districtviewa.php";
			window.location.href="districtviewm.php";
			window.location.href="districtviewv.php";
		</script>
		
		<?php
	}	
		?>