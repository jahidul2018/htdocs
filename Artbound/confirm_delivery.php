<?php 

		session_start();

		if($_SESSION['UserName']!=true){
			header('location: sign_in.php');
		}
		
		else{
			$UserName=$_SESSION['UserName'];
		}
		
		$connect=mysql_connect("localhost", "root", "") or die(mysql_error());
		mysql_select_db("Artbound") or die(mysql_error());


		if(isset($_GET["auction_id"])){
				$auction_id = $_GET["auction_id"];
		}
				
		$query = "Select * From Auction Where AuctionID = '$auction_id'" or die("Not Found");
		$result = mysql_query($query, $connect) or die("Query didn't work");
		$rows=mysql_num_rows($result);
				
		if($rows == 1){
			while($fetch=mysql_fetch_assoc($result)){
					$art_id=$fetch['ArtID'];
					$artist_id=$fetch['UserID'];
						
			}
		}
		
		
		$query = "Select * From Art Where ArtID = '$art_id'" or die("Not Found");
		$result = mysql_query($query, $connect) or die("Query didn't work");
		$rows=mysql_num_rows($result);
				
		if($rows == 1){
			while($fetch=mysql_fetch_assoc($result)){
					$art_name=$fetch['ArtName'];	
			}
		}
		
		
		$query = "Select * From Users Where UserID = '$artist_id'" or die("Not Found");
		$result = mysql_query($query, $connect) or die("Query didn't work");
		$rows=mysql_num_rows($result);
				
		if($rows == 1){
			while($fetch=mysql_fetch_assoc($result)){
					$first_name=$fetch['FirstName'];	
					$last_name=$fetch['LastName'];	
			}
		}
		
		
		$query=mysql_query("SELECT MAX(BidAmount) AS highest_bid FROM bid WHERE ArtID='$art_id'");
		$row=mysql_fetch_array($query);
		$h_bid=$row['highest_bid'];
						
		$query = mysql_query("SELECT UserName as highest_bidder FROM bid WHERE ArtID='$art_id' AND BidAmount='$h_bid'");
		$row = mysql_fetch_array($query);
		$highest_bidder = $row['highest_bidder'];
		
		
		$query = "Select * From Users Where UserName = '$highest_bidder'" or die("Not Found");
		$result = mysql_query($query, $connect) or die("Query didn't work");
		$rows=mysql_num_rows($result);
				
		if($rows == 1){
			while($fetch=mysql_fetch_assoc($result)){
					$user_id = $fetch['UserID'];
					$contact_number = $fetch['ContactNumber'];
			}
		}
		
		
		$query = "Select * From credit_card Where UserID = '$user_id'" or die("Not Found");
		$result = mysql_query($query, $connect) or die("Query didn't work");
		$rows=mysql_num_rows($result);
				
		if($rows == 1){
			while($fetch=mysql_fetch_assoc($result)){
					$card_type=$fetch['CardType'];	
					$card_number=$fetch['CardNumber'];	
			}
		}
		
		
		

?>


<html>
<head>
	<title>Confirm Delivery</title>
	<link href="CSS/style.css" rel="stylesheet" type="text/css"/>
</head>

<body>

	<div id="confirm_delivery">
		<h1>Confirm Delivery</h1>
		<hr/>
		
		<div id="g_info">
				<label>Art Name</label> <p> : <?php echo $art_name; ?></p><br/>
				<label>Artist Name</label> <p> : <?php echo $first_name." ".$last_name; ?></p><br/>
				<label>Amount You Placed</label> <p> : <?php echo $h_bid; ?></p><br/>
				<label>Card Info</label> <p> : <?php echo $card_type.", ".$card_number; ?></p><br/>
				<label>Contact Number</label> <p> : <?php echo $contact_number; ?></p><br/>
		</div>
		
		<form>
		
			<label>Billing Address</label>
			<input id="b_add" type="text" name="billing_address" maxlength="100" placeholder="fill up carefully; maxlength:100" required /><br/>
			<label>Shipping Address</label>
			<input id="s_add" type="text" name="shipping_address" maxlength="100" placeholder="fill up carefully; maxlength:100" required /><br/>
			
			<input id="agreement" type="checkbox" required /><p>I Agree to the Artbound's Terms of Service<p/><br/>
			
			<input id="con_add" type="submit" value="Confirm"/>
		</form>
		
	
		
	</div>
	
	<div class="copyright3">
		<p>&copy; 2016 Artbound. All rights reserved | Powered by Pritom Chakraborty</p>
	</div>
				
</body>
</html>




