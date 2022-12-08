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
	$uname_member=$_POST['uname_member'];
	$password_member=$_POST['password_member'];
	
//Koneksi Tabel
	$sql="SELECT * FROM sysloginmember WHERE uname_member='$uname_member' AND password_member='$password_member'";
	$result=$con->query($sql);
	$row=$result->fetch_assoc();
	
	if($row['uname_member']==$_POST['uname_member'] AND $row['password_member']==$_POST['password_member']) {
		header("location:homem.php");
	} else {
		echo "Login Gagal! Periksa kembali Username dan Password Anda";
	}
	
?>