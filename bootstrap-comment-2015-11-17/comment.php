<?
/**
 * PHP Comment Class
 * @author vishv23@yahoo.com - http://v23.in
 * @version 1.0.0
 * @date November 17, 2015
*/

include "config.php";
include "bootstrapcomment.php";

//----------edit if require-------------------------------
$fieldRequire=array("name"=>"","comment"=>"");
//-----------------------------------------

$co = new bootstrapcomment("localhost",$dbuser, $dbpass,$dbname);

//------------------Save Comment---------------
if(isset($_POST['uri']) && $_POST['uri'] == $_SERVER['REQUEST_URI']){
$co->save($_POST['comment'],$_POST['name'],$_SERVER['REQUEST_URI'],time(),$_SERVER['REMOTE_ADDR'],$_POST['id']);
}

//-----------------------------------



$totalRow=$co->totalRows($_SERVER['REQUEST_URI']);

if($totalRow > $perPageDisplay )
$tgroup=round($totalRow / $perPageDisplay );
else
$tgroup=1;

$output['script'] = '<script>
  $(".replyin").hide();


	
	  $(".rreply").click(function(){
		var id = $(this).attr("aria-value");
		
            if($(".replyin").is(":visible")){
                $(".replyin").hide();
				$("#id").val(0);
				 $("#freply").show();
            } else {
			$("#id").val(id);
                $(".replyin").show();
				  $("#freply").hide();
				  $("#name").focus();
            }
           
            return false;
        });
		
$(document).ready(function() {
$(".glyphicon-thumbs-up").one("click",function(){
var id = $(this).attr("aria-value");
$.post("/comment/like-dislike.php",{"type":"like","id":id}, function(data){

  
   


					$("#UP"+id).text(" " +data);
				})
});

$(".glyphicon-thumbs-down").one("click",function(){
var id = $(this).attr("aria-value");
 $.ajax({
    url : "/comment/like-dislike.php",
    type: "POST",
    data : {"type": "dislike","id":id},
    success: function(data)
    {
       $("#DOWN"+id).text(" " +data);
    }
});
$(this).text(d + "v");
});	
});	
</script>
';

$output['maincontent'] ='
<p>ALL COMMENTS '.$totalRow.'</p>
<div class="form-group rreply" id="freply">
      <input type="text" class="form-control ">
  </div>
 
<div class="form-group replyin">
 <form method="post" action="'.$_SERVER['REQUEST_URI'].'" id="foo">
<input type="hidden" name="tm" value="'.time().'"/>
<input type="hidden" name="uri" value="'.$_SERVER['REQUEST_URI'].'"/>
<input type="hidden" name="id" id="id" value="0"/>
 <div class="form-group">
      <input type="text" class="form-control" id="name" name="name"  placeholder="Name...">
  </div>
  
   <div class="form-group">
      <textarea class="form-control" id="comment" name="comment" row="5" placeholder="Add a public comment..."></textarea>
  </div>
  <div class="form-group">
      <button type="submit" class="btn btn-info" id="submit">Comment</button>
  </div>
</form>
  </div>

';

$output['maincontent'] .='<ul>';

$res=$co->fetchCategoryTree(0,$_SERVER['REQUEST_URI'],3," LIMIT 20");
  foreach ($res as $r) {
    $output['maincontent'] .=  $r;
  }

$output['maincontent'] .= '</ul>';





$output['title']="Demo COMMENT";

$output['style']='
<style>
.showmore{padding: 10px;width: 80%; border: 1px solid #777;}
.showmore:hover{background-color: #ddd;}
.bg-info{padding: 10px;border: 1px solid #6CA6CD;font-weight: 700;}
#fo{
background-color: #e5f1ff;
border: 1px solid #b2d7ff;
padding-top: 10px;
margin-bottom: 10px;
}
.panel-body{padding: 10px; color: #777;}
span{
margin-right: 12px;
cursor: pointer;
}

span:hover{
opacity: .2;
}

glyphicon{

}
</style>';


if(is_file( "comment-template.php"))
echo $co->render_temp(   "comment-template.php",array("output"=>$output));


unset($output);
?>