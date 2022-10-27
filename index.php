<?php

$page = null;
if (array_key_exists('category', $_GET))
	$page = $_GET['category'];

?>

<html>
	<?php include('head.php') ?>
	<body>
		<?php include('navigation.php') ?>
		<div class="main">
			<div class="center-box">
				<?php
				include('top.php');
				if ($page == 'shirt')
					include('shirt.php');
				else if ($page == 'tshirt')
					include('tshirt.php');
				else if ($page == 'trousers')
					include('trousers.php');
				else if ($page == 'jeans')
					include('jeans.php');
				else include('center.php');
				?>
			</div>
		</div>
	</body>
	<script src="script.js"></script>
</html>

