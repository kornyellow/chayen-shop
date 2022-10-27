<?php
$servername = "localhost";
$dbname = "spa_shop";
$username = "root";
$password = "";

$conn = new mysqli($servername, $username, $password);

$id = $_GET['id'];

$title = null;
$description = null;
$price = null;
$image_path = null;
$subimage_1 = null;
$subimage_2 = null;
$subimage_3 = null;

try {
	$conn = new PDO(
		"mysql:host=$servername;dbname=$dbname",
		$username, $password);
	$conn->exec("set names utf8");
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$stmt = $conn->prepare("SELECT * FROM product where p_id = $id");
	$stmt->execute();

	$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
	foreach ($stmt->fetchAll() as $key => $value) {
		$title = $value['p_title'];
		$description = $value['p_description'];
		$price = $value['p_price'];
		$image_path = $value['p_image_path'];
		$subimage_1 = $value['p_subimage_1'];
		$subimage_2 = $value['p_subimage_2'];
		$subimage_3 = $value['p_subimage_3'];
	}
	
} catch (PDOException $e) {
	echo "ERROR: ".$e->getMessage();
}

?>

<div style="display:flex; justify-content: center; width: 890px; flex-flow: row wrap;">
	<div class="content-container">
		<a class="back-button" href="index.php">
			<i class="fa-solid fa-arrow-left"></i>
		</a>
		<center>
			<div style="display:flex; justify-content: center; width: 370px; flex-flow: row wrap;">
				<div class="show-product">
					<h1><?=$title ?></h1>
					<p><?=$description ?></p>
					<font class="price" color="#FF9C33">฿<?=$price ?></font>
						<img class="gshow" src="<?=$image_path ?>" width="360" height="345">
						<img class="gshow" src="<?=$subimage_1 ?>" width="360" height="345">
						<img class="gshow" src="<?=$subimage_2 ?>" width="360" height="345">
						<img class="gshow" src="<?=$subimage_3 ?>" width="360" height="345">
					<br><br>
					</div>
					<div class="h-line"></div><br>
					<div class="images-show">
						<img src="<?=$image_path ?>" width="145" height="140" onclick="currentDiv(1)">
						<img src="<?=$subimage_1 ?>" width="145" height="140" onclick="currentDiv(2)">
						<img src="<?=$subimage_2 ?>" width="145" height="140" onclick="currentDiv(3)">
						<img src="<?=$subimage_3 ?>" width="145" height="140" onclick="currentDiv(4)">
					</div>
				</div>
			</div>
		</center>
	</div>
</div>
<br>

<script>
var show = 1;
showDivs(show);
function plusDivs(n) { showDivs(show += n);	}
function currentDiv(n) { showDivs(show = n);	}
function showDivs(n) { 
 var x = document.getElementsByClassName("gshow");
 for (i = 0; i < x.length; i++)
{	x[i].style.display = "none";	}
	x[show-1].style.display = "block";	}
</script>
