<?php
if(isset($_GET['id'])) {
 $id = $_GET['id'];
}else{
  $id = null;
}
//phpinfo();
$mysql_hostname = "10.1.1.22";
$mysql_user = "root";   $mysql_password = "P@ssw0rd";
//$mysql_user = "khomkrit";   $mysql_password = "Kh@mkrit8";
$mysql_database = "0028_Lab_Exam";
$bd = mysqli_connect($mysql_hostname,$mysql_user,$mysql_password, $mysql_database) or die("Could not connect database");
if (!$bd) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully".'<br>';

if($id>0)
{
$sql_stmt = "select * from Hero Left Join Hero_in_movie on Hero_in_movie.Hero_id=Hero.Hero_id where Hero_id=".$id;

}else
{
$sql_stmt = "select * from Hero Left Join Hero_in_movie on Hero_in_movie.Hero_id=Hero.Hero_id";
}

$result=mysqli_query($bd,$sql_stmt);
if(!$result)
{
die("Database access failed".mysqli_error());
//die("Database access failed".mysqli_error());
}

$rows=mysqli_num_rows($result);

if($rows){
echo '<!DOCTYPE html><html lang="en-US"><head><title>การแสดงรายชื่อ Hero โดยนายคมกฤช เงินคำ รหัส 645162010028</title></head><body>';

 while($row = mysqli_fetch_array($result)){
echo "<img src='".$row['Picture_link']."' alt='Image'>";
   echo 'Name: '.$row['Name'].'<br>';
   //echo 'Director: '.$row['Director'].'<br>';
   //echo 'Type: '.$row['Type'].'<br>';
   //echo 'Tailer: <a href="'.$row['Trailer'].'" target="_blank">'.$row['Trailer'].'</a><br><br>';
 }

echo '<button onclick="myFuction()">SQL statement to DB</button>'.PHP_EOL ;
echo '<script type="text/Javascript">' .PHP_EOL. 'function myFuction(){alert("'.$sql_stmt.'");}' .PHP_EOL. '</script>';
echo '</body></html>';
}

//Free result set
mysqli_free_result($result);
mysqli_close($bd);
?>
