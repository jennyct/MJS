<html>
	<head>
		<title>Shop | MJS</title>
		<link rel="stylesheet" href="public/css/style.css">
		<link rel="stylesheet" href="public/css/shop.css">
	</head>

	<body>
		<header id="businessHeader">
			<div class="row">
				<div class="col-12">
					<a href="index.html" id="headerLink">MJS Sneakers</a>	
				</div>
			</div>
		</header>

		<div class="container">
			<!-- <div class="col-4"></div> -->
			<table class="col-6 col-offset-3">
				<thead>
					<tr>
						<th>Product</th>
						<th>Name</th>
						<th>Price</th>
						<th>Color</th>
						<th>Material</th>
					</tr>
				</thead>
				<tbody>
					<?php
						require("connect.php");
						$query = $conn->query('SELECT * FROM shoes');

						while($r = $query->fetch()) {
							echo '<td class="cell-1">' .
								'<a href="shoes.php?folderName=' . $r['folder_name'] . '"/>' .
								'<img src="public/images/' . $r['folder_name'] . '/main.jpg"/>'.
							'</td>' .  
							'<td class="cell-2">' . $r['name'] . '</td>' .
							'<td class="cell-3">' . $r['price'] . '</td>' .
							'<td class="cell-4">' . $r['color'] . '</td>' .
							'<td class="cell-5">' . $r['material'] . '</td>' .
							'</tr>';
						}
					?>
					<!-- <tr>
						<td class="cell-1">
							<a href="curry.html"/>
							<img src="public/images/curry/1280303-001_DEFAULT.jpeg" alt="Under Armour Stephen Currys">
						</td>
						<td class="cell-2">UA Curry Two Elite</td>
						<td class="cell-3">$129.99</td>
						<td class="cell-4">Black/Gold</td>
						<td class="cell-5">Synthetic Leather</td>
					</tr> -->
				</tbody>
			</table>
		</div>

		<script src="public/js/shop.js"></script>
	</body>
</html>