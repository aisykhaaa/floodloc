<?php
	session_start();
//koneksi server dan database
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="floodloc";
	$con=new mysqli($servername,$username,$password,$dbname);

	if($con->connect_error){
		die("Koneksi Gagal".$connect_error);
	}
	$uname_admin=$_POST['uname_admin'];
	$password_admin=$_POST['password_admin'];
	
//Koneksi Tabel
	$sql="SELECT * FROM sysloginadmin WHERE uname_admin='$uname_admin' AND password_admin='$password_admin'";
	$result=$con->query($sql);
	$row=$result->fetch_assoc();
	
	if($row['uname_admin']==$_POST['uname_admin'] AND $row['password_admin']==$_POST['password_admin']) {
		header("location:homea.php");
	} else {
		echo "Login Gagal! Periksa kembali Username dan Password Anda";
	}
?>