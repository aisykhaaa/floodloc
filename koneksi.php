<?php
	// buat koneksi dengan MySQL
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="floodloc";
	$link = mysqli_connect($servername,$username,$password,$dbname);

	//periksa koneksi, tampilkan pesan kesalahan jika gagal
	if(!$link){
		die ("Koneksi dengan database gagal: ".mysqli_connect_errno()." - ".mysqli_connect_error());
	}
?>