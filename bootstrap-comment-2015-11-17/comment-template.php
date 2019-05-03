<html>
<head>
<title><?PHP if(isset($output['title'])) echo $output['title']; ?></title>
<?PHP if(isset($output['des'])) echo $output['des']; ?>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style>
.bg-info{padding: 10px;border: 1px solid #6CA6CD;font-weight: 700;}
    </style>
<?PHP if(isset($output['head'])) echo $output['head']; ?>
<?PHP if(isset($output['style'])) echo $output['style']; ?>
</head>
<body>

<div class="container">
	<div class="row">
        <div class="col-sm-12 col-md-12"><h1> Demo Comment </h1></div>
  			<div class="col-sm-3"><div class="row"><div class="col-sm-12">
                <? 
		if(isset($output['leftcontent']))
		echo $output['leftcontent'];
		?>
             </div></div></div>
      		<div class="col-sm-9"><div class="row"><div class="col-sm-12">
                <?  
        if(isset($output['maincontent']))
		echo $output['maincontent']; 
        ?>
                
               
                
		<? 
		if(isset($output['comment']))
		echo $output['comment'];
		?>
		</div></div></div>
  	</div>
</div>
    
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<p class="text-muted">&copy; 2015 Company Name  All right reserved. <span class="pull-right">yourdomain.com</span></p>
			</div>
		</div>
	</div>
</footer>    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	
<?PHP if(isset($output['script'])) echo $output['script']; ?>
</body>
</html>
