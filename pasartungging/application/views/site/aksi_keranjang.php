<?php 
session_start();
include "lib/koneksi.php";
$sid = session_id();
$id_pro=$_GET['id_produk'];
$tanggal=date("Y-m-d");
$sql=mysql_query("SELECT id_produk FROM tbl_order WHERE id_produk='$id_pro' AND id_session='$sid'");
	$ketemu = mysql_num_rows($sql);
	if ($ketemu==0) {
	 	mysql_query("INSERT INTO tbl_order (status_order, id_produk, jumlah, id_session)
	 		VALUES ('P','$id_pro',1,'$sid')")
	 	} else {
	 		mysql_query("UPDATE tbl_order SET jumlah = jumlah + 1 WHERE id_session = '$sid' AND id_produk='$id_pro'");
	 	} 
	 	header('Location:keranjang.php');

	 	?>