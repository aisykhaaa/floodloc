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
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<table width="559" border="1" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="40" colspan="5" align="center" valign="middle">Daftar Wilayah Rawan Banjir </td>
  </tr>
  <tr>
    <td width="101" height="28" align="center" valign="middle">Code</td>
    <td width="180"align="center" valign="middle">Kabupaten/Kecamatan</td>
    <td width="113" align="center" valign="middle">Kota</td>
    <td colspan="2" align="center" valign="middle">
	  <a href="districtadd.php">Add</a>	
	</td>
  </tr>
  
  <?php
  	//koneksi tabel
		//$sql=rumusquery;
		$sql="SELECT * FROM msadd";
		$result=$con->query($sql);
				
	//koneksi field
		//$row=$result->fetch_assoc();
		while($row=$result->fetch_assoc()){
  ?>
  
  <tr>
    <td height="23" align="center" valign="middle">
	<?php
			echo $row['districtid'];
	?>	
	</td>
    <td align="left" valign="middle">
	<?php
			echo $row['districtname'];
	?>	
	</td>
    <td align="center" valign="middle">
	<?php
			echo $row['cityid'];
	?>	
	</td>
    <td width="51" align="center" valign="middle">
	  <a href="districtadd.php">Add</a>
	</td>
  </tr>
    
  <?php
  		}
  ?>
</table>
</body>
</html>
