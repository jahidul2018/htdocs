<!docktytype html>
<html>
<head>
	<title> php syntax </title>
	<style>
	.phpcoding{width: 900px; margin: 0 auto;background-color: #ddd; }
	.headeroption, 
	.fooleroption{background: #444; color: #fff;text-align: center; padding: 20px;}
	.maincontent{min-height: 400px; padding: 20px;}
	.headeroption h2, .fooleroption h2{margin: 0px}
	</style>
</head>
<body>
	<div class="phpcoding">
		
		<section class="headeroption"><h2><?php echo"php fundamantal trining"; ?></h2></section>
		<section class="maincontent">
			<!-- 
				comparison operators
				comprasion $x==$y

				identical $x===$y




			-->

			<?php $x=1000; $y=100; var_dump($x===$y); ?>
			<?php $x=100; $y=100; var_dump($x==$y); ?>
			<?php $x=1000; $y=100; var_dump($x>$y); ?>
			<?php $x=100; $y=1000; var_dump($x<=$y); ?>
		</section>
		<section class="fooleroption"><h2><?php echo "www.mishuk.com"; ?> </h2></section>

		
	</div>
	
</body>
</html>