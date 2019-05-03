<?php 
					
					$connect = mysql_connect("localhost", "root", "") or die("Couldn't connect to localhost");
					mysql_select_db("Artbound") or die ("Couldn't connect to database");
					
					$res=mysql_query("SELECT * FROM auction_request WHERE ArtID=17") or die(mysql_error());
					while($row=mysql_fetch_array($res))
					{
						$bidder_id = $row["UserID"];
						
						
						$query="SELECT * FROM Users WHERE UserID='$bidder_id'" or die(mysql_error());
						$result=mysql_query($query, $connect) or die(mysql_error());
						$rows=mysql_num_rows($result);
						
						if($rows==1){
							while($fetch=mysql_fetch_assoc($result)){
									$bidder_name=$fetch['UserName'];
							}
						}
						
						echo $bidder_name;
					}
?>



						<script type="text/javascript">
							function validate(){
								
								//for Jump Bid
								var err=0;
								var errbid = document.getElementById("errBid");
								var jumpbid = document.JumpBid.jump_bid.value;
								var next = <?php echo $max ?>;
								var increment = 1000;
								var jump = parseInt(next, 10) + increment;
								//document.write(jump);
								
								
								if(jumpbid == "")
								{
									errbid.innerHTML = "no value";
									err++;
								}
								
								else if(jumpbid < jump){
									errbid.innerHTML = "Must be bigger than next expected bid";
									err++;
								}
								
								else
								{
									errbid.innerHTML = " ";
								}
								
								console.log (err);
								
								if(err==0){
									console.log ( 'well done' );
									return true;
								}
								else{
									return false;
								}
							
							}			
					
						</script>
					
					