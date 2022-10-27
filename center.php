<?php
$servername = "localhost";
$dbname = "spa_shop";
$username = "root";
$password = "";

$conn = new mysqli($servername, $username, $password);

$product_divs = [];
$show_products = "";

$search = null;
if (array_key_exists('search', $_GET))
	$search = $_GET['search'];

try {
	$conn = new PDO(
		"mysql:host=$servername;dbname=$dbname",
		$username, $password);
	$conn->exec("set names utf8");
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$stmt = $conn->prepare("SELECT * FROM product");
	if ($search != null)
		$stmt = $conn->prepare("SELECT * FROM `product` where (`p_title` LIKE '%$search%') OR (`p_description` LIKE '%$search%') OR (`p_category` LIKE '%$search%')");
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

<?php
if (empty($show_products))
	echo '<center><h1><i class="fa-solid fa-triangle-exclamation" style="margin-right: 10px"></i>ขออภัย ไม่พบสินค้าที่ท่านต้องการ</h1></center>';
?>
<div class="product">
	<?php
	if (!empty($show_products))
		echo $show_products;
	?>
</div>
