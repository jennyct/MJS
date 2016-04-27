<?php
	require("connect.php");
	$shoeID = $_GET['id'];
	$state = $conn->prepare('SELECT * FROM shoes WHERE `id`=:id');
	$state->bindValue(':id', $shoeID);
	$state->execute();
	$sneaker = $state->Fetch();
?>
<html>
	<head>
		<link rel="stylesheet" href="public/css/style.css"/>
		<link rel="stylesheet" href="public/css/sneaker.css"/>
		<title><?php echo $sneaker['name']; ?></title>
	</head>
	<body>
		<header id="sneakerHeader">
			<div class="row">
				<div class="col-12">
					<a href="index.php" class="sneaker">MJS Sneakers</a>	
				</div>
			</div>
		</header>
		<div class="row">
			<div class="col-6">
				<h3><?php echo $sneaker['name'] . " - " . $sneaker['color'] . " ($" . $sneaker['price'] . ")"; ?></h3>
				<table>
					<tr>
						<td><img class="small" src=<?php echo "public/images/" . $sneaker['folder_name'] . "/main.jpg"; ?>></td>
						<td rowspan="4"><img id="main" src=<?php echo "public/images/" . $sneaker['folder_name'] . "/main.jpg"; ?>></td>
					</tr>
					<tr><td><img class="small" src=<?php echo "public/images/" . $sneaker['folder_name'] . "/1.jpg"; ?>></td></tr>
					<tr><td><img class="small" src=<?php echo "public/images/" . $sneaker['folder_name'] . "/2.jpg"; ?>></td></tr>
					<tr><td><img class="small" src=<?php echo "public/images/" . $sneaker['folder_name'] . "/3.jpg"; ?>></td></tr>
				</table>
				<p><?php echo $sneaker['description'] ?></p>
			</div>
			<div class="col-6">
				<h3>Order Information</h3>
				<form action="orders.php" method="POST">
					<input id="quanitity" type="number" name="quantity" placeholder="Quantity" required><br>
					<input type="text" name="firstName" placeholder="Enter first name" required><br>
					<input type="text" name="lastName" placeholder="Enter last name" required><br>
					(<input type="tel" class="tel-number" size="3" id="areaCode" placeholder='xxx'maxlength="3" name="areaCode" required>) <input type="tel" class="tel-number" name="phoneNumber" id="firstNum" placeholder="xxx" maxlength="3" required> - <input type="tel" class="tel-number" size="4" id="secondNum" placeholder="xxxx" maxlength="4" name="phoneNumber1" required>
					<br>
					<input type="text" name="address" placeholder="Enter address" required><br>
					<input type="text" name="city" placeholder="Enter City" required><br>
					<input type="number" name="zipCode" placeholder="Enter Zip Code"><br>
					<select name="shippingMethod" id="shippingMethod" required>
						<option value="overnight">Overnight</option>
						<option value="twoDayEx">2 Days Expedited</option>
						<option value="sixDaysGr">6 Days Ground</option>
					</select><br>
					<input id="ccNum" type="tel" name="ccNumber" placeholder="Enter Credit Card Number" onKeyDown="if(this.value.length==16 && event.keyCode!=8) return false;" required><br>
					<input id="month" type="month" name="ccExp" placeholder="Enter Credit Card Expiration" required><br>
					<input id="ccCSC" type="tel" name="ccCSC" placeholder="Enter Credit Card CSC" onKeyDown="if(this.value.length==3 && event.keyCode!=8) return false;" required><br>
					<input id="shoeID" type="hidden" name="shoeID" value="<?php echo $sneaker['id'] ?>">

					<button type="submit">Submit</button>
				</form>
			</div>
		</div>
		<script src="public/js/hover.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.js"></script>
		<script src="public/js/submit.js"></script>
	</body>
</html>