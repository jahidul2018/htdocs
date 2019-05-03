<!DOCTYPE html>
<html>
<head>
	<title>Upload file</title>
</head>
<body>
<form action="multipleimage.php" method="post" enctype="multipart/form-data">
	<input type="file" name="file_img[]" multiple />
	<input type="submit" name="btn_upload" value="Upload">

</form>
</body>
</html>

<?php 
if (isset($_POST['btn_upload'])) {

	for($i=0; $i<count($_FILES["file_img"]["name"]); $i++) {
		
		$filetmp  =$_FILES["file_img"]["tmp_name"][$i];
		$filename =$_FILES["file_img"]["name"][$i];
		$filetype =$_FILES["file_img"]["type"][$i];
		$filepath ="uploads/".$filename;

		move_uploaded_file($filetmp,$filepath);

		//$sql = "INSERT INTO upload_img (img_name,img_path,img_type) VALUES ('$filename','$filepath','$filetype')";
		//reset=mysql_query($sql)
	}
} ?>