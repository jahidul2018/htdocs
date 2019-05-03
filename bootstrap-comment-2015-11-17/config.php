<?
/**
 * PHP Comment Class
 * @author vishv23@yahoo.com - http://v23.in
 * @version 1.0.0
 * @date November 17, 2015
*/

//----------------------- edit-------------------
define("APP",$_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR);
date_default_timezone_set("Asia/Kolkata");
define('DB_HOST', 'localhost');
define('DB_NAME', 'cdm');
define('DB_USER', 'root');
define('DB_PASS', '');

$dbtable="comment";

$primeryKey="id";
$perPageDisplay=10;

$dbuser=DB_USER;
$dbpass=DB_PASS;
$dbname=DB_NAME;
$badwordFile = "badwordslist.txt";

//----------------------------------------------

?>




