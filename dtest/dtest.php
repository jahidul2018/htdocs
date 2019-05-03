<?php include 'config.php';?>

<?php include 'Database.php';?>
<?php 

$db= new Database();

if ($_SERVER['REQUEST_METHOD']=='POST') {

	 $username= mysqli_real_escape_string($db->link,$_POST['username']);
	  $password= mysqli_real_escape_string($db->link,$_POST['password']);
	   $subname= mysqli_real_escape_string($db->link,$_POST['subname']);
	    $catagory= mysqli_real_escape_string($db->link,$_POST['catagory']);
	     $department= mysqli_real_escape_string($db->link,$_POST['department']);
	    $stname= mysqli_real_escape_string($db->link,$_POST['stname']);
	    $subject= mysqli_real_escape_string($db->link,$_POST['subject']);
	    $roll= mysqli_real_escape_string($db->link,$_POST['roll']);

	    $uid='pro'.substr(strtoupper(md5(rand())),6,6);
	    $subid='pro'.substr(strtoupper(md5(rand())),6,6);
	    $sid='pro'.substr(strtoupper(md5(rand())),6,6);

//echo $username.$password;

                    if ( $username=="" || $password=="" || $subname=="" || $catagory=="" || $department=="" || $stname=="" || $subject=="" || $roll=="")
                         {
                        echo "<span color='red'>Field Must Not Be Empty !!</span>";

                    }else {
                     
 
							 $user= "insert into user (uid, user, password) values ('$uid','$username', '$password')"; 
							 $insertUser= $db->insert($user);
							 if ($insertUser) {
							 	echo "inserted user"."<br>";
							 		$subject= "insert into subject (subid, subname, catagory, department) values ('$subid', '$subname', '$catagory', '$department')";
							 			$subject= $db->insert($subject);
							 			if ($subject) {
							 			echo "inserted subject"."<br>";

							 			}else{
							 				echo"not inserted subject";
							 			}
							 			if ($subject) {
							 				# code...
							 			
							 			$student="insert into student (sid, subid, stname, subject, roll) values ('$sid','$subid', '$stname', '$subject', '$roll')";
							 			$student= $db->insert($student);
							 			if ($student) {
							 			echo "inserted student"."<br>";

							 			}else{
							 				echo"not inserted student";
							 			}
							 		}


							}else{
								echo"not inserted user";
								}
						}
} ;

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="" method="post" enctype="multipart/form-data">
                    <table class="form" align="center" bgcolor="pink">

    

                         <tr>
                            <td>
                                <label>username</label>
                            </td>
                            <td>
                                <input type="text" name="username" placeholder="Enter username" class="medium" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label>password</label>
                            </td>
                            <td>
                                <input type="password" name="password" placeholder="Enter password" class="medium" />
                            </td>
                        </tr>

                         <tr>
                            <td>
                                <label>subname</label>
                            </td>
                            <td>
                                <input type="text" name="subname" placeholder="Enter subname" class="medium" />
                            </td>
                        </tr>

                        
                         <tr>
                            <td>
                                <label>catagorys</label>
                            </td>
                            <td>
                                <input type="text" name="catagory" placeholder="Enter catagory" class="medium" />
                            </td>
                        </tr>

                     
                          <tr>
                            <td>
                                <label>department</label>
                            </td>
                            <td>
                                <input type="text" name="department" placeholder="Enter Sdepartment" class="medium" />
                            </td>
                        </tr>
                            
                        <tr>
                            <td>
                                <label>stname</label>
                            </td>
                            <td>
                                <input type="text" name="stname" placeholder="Enter stname" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>subject</label>
                            </td>
                            <td>
                                <input type="text" name="subject" placeholder="Enter subject" class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <label>roll</label>
                            </td>
                            <td>
                                <input type="text" name="roll" placeholder="Enter roll" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>

</table>
</form>
</body>
</html>