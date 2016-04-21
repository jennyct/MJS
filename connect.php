<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "inf124grp12";

$conn = new PDO('mysql:host=localhost;dbname=inf124grp12', $username, $password);

try{
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e) {
	echo 'ERROR: ' . $e->getMessage();
}
?>