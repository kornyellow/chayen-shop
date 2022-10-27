<?php
$servername = "localhost";
$dbname = "spa_shop";
$username = "root";
$password = "";

$conn = new mysqli($servername, $username, $password);

$product_divs = [];
$show_products = "";

try {
	$conn = new PDO(
		"mysql:host=$servername;dbname=$dbname",
		$username, $password);
	$conn->exec("set names utf8");
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$stmt = $conn->prepare("SELECT * FROM product where p_category='กางเกงยีนส์'");
	$stmt->execute();

	$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
	foreach ($stmt->fetchAll() as $key => $value) {
		$div = makeProductFrame($value['p_id'], $value["p_title"], $value["p_description"], $value["p_price"], $value["p_image_path"]);
		if ($div != null)
			$product_divs[] = $div;
	}
	
} catch (PDOException $e) {
	echo "ERROR: ".$e->getMessage();
}

while (count($product_divs) != 0) {
	$ran = rand(0, count($product_divs) - 1);
	$show_products .= $product_divs[$ran];
	unset($product_divs[$ran]);
	$product_divs = array_values($product_divs);
}

function makeProductFrame(string $id, string $title, string $description, float $price, string $image_path): ?string {
	return "
		<a href='product.php?id=$id' class='product-box'>
			<div><img src='$image_path'/></div>
			<div class='content'>
				<div>
					<h3>$title</h3>
					<p>$description</p>
				</div>
				<div class='price'><span>฿$price</span></div>
			</div>
		</a>
	";
}

?>

<div class="product">
	<?php echo $show_products; ?>
</div>
