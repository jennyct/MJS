<?php 
	$quantity = NULL;
	$firstName = NULL;
	$lastName = NULL;
	$areaCode = NULL;
	$phoneNumber = NULL;
	$phoneNumber1 = NULL;
	$address = NULL;
	$city = NULL;
	$zipCode = NULL;
	$shippingMethod = NULL;
	$ccNumber = NULL;
	$ccExp = NULL;
	$ccCSC = NULL;
	$shoeID = NULL;

	if (isset($_POST['quantity'])) {
		$quantity = $_POST['quantity'];
	}
	if (isset($_POST['firstName'])) {
		$firstName = $_POST['firstName'];
	}
	if (isset($_POST['lastName'])) {
		$lastName = $_POST['lastName'];
	}
	if (isset($_POST['areaCode'])) {
		$areaCode = $_POST['areaCode'];
	}
	if (isset($_POST['phoneNumber'])) {
		$phoneNumber = $_POST['phoneNumber'];
	}
	if (isset($_POST['phoneNumber1'])) {
		$phoneNumber1 = $_POST['phoneNumber1'];
	}
	if (isset($_POST['address'])) {
		$address = $_POST['address'];
	}
	if (isset($_POST['city'])) {
		$city = $_POST['city'];
	}
	if (isset($_POST['zipCode'])) {
		$zipCode = $_POST['zipCode'];
	}
	if (isset($_POST['shippingMethod'])) {
		$shippingMethod = $_POST['shippingMethod'];
	}
	if (isset($_POST['ccNumber'])) {
		$ccNumber = $_POST['ccNumber'];
	}
	if (isset($_POST['ccExp'])) {
		$ccExp = $_POST['ccExp'];
	}
	if (isset($_POST['ccCSC'])) {
		$ccCSC = $_POST['ccCSC'];
	}
	if (isset($_POST['shoeID'])) {
		$shoeID = $_POST['shoeID'];
	}

	require("connect.php");
	$state = $conn->prepare ("INSERT INTO orders (quantity, first_name, last_name, phone_number, address, city, zipcode, shipping, cc_number, cc_exp_date, cc_csc, shoe_id)
		VALUES ('$quantity', '$firstName', '$lastName', '$phoneNumber', '$address', '$city', '$zipCode', '$shippingMethod', '$ccNumber', '$ccExp', '$ccCSC', '$shoeID')");
	$state->execute();

	echo "hello";
?>