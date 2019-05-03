<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="POST" action="fileupload.php" enctype="multipart/form-data">
		select fie: <input type="file" name="file[]" multiple="multiple" required />
		<input type="submit" value="Upload">
	</form>

</body>
</html>