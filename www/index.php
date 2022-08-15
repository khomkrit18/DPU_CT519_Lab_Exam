<?php
if(isset($_GET['id'])) {
 $id = $_GET['id'];
}else{
  $id = null;
}
//phpinfo();
$mysql_hostname = "10.1.1.22";
//$mysql_user = "root";   $mysql_password = "P@ssw0rd";
$mysql_user = "khomkrit";   $mysql_password = "Kh@mkrit8";
$mysql_database = "0028_Lab_Exam";
$bd = mysqli_connect($mysql_hostname,$mysql_user,$mysql_password, $mysql_database) or die("Could not connect database");
if (!$bd) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully".'<br>';

if($id>0)
{
$sql_stmt = "SELECT * FROM Hero LEFT JOIN Hero_in_movie ON Hero.Hero_id = Hero_in_movie.Hero_id INNER JOIN Movie ON Hero_in_movie.Movie_id = Movie.Movie_id WHERE Hero.Hero_id =".$id;
}else
{
$sql_stmt = "SELECT Picture_link, Name,Hero_id FROM Hero";
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
 	
  // echo "<img src='".$row['Picture_link']."' alt='Image'>";
   //echo 'Name: '.$row['Name'].'<br>';

if($id<1){
echo '<a href="index.php?id='.$row['Hero_id'].'"><img src="'.$row['Picture_link'].'" style=width:"100px;height:100px;"></a>';
echo 'Hero Picture:'.'<a href=/index.php?id='.$row['Hero_id'].' target="_blank">'.$row['Name'].'</a><br>';
}

   if($id>0){
	echo '<a href="index.php?id='.$row['Hero_id'].'"><img src="'.$row['Picture_link'].'" style=width:"100px;height:100px;"></a>';
	echo '</br>Hero Detail: '.$row['Detail'].'<br>';
	echo '</br>ปรากฏในภาพยนตร์</br>';
	echo ':'.'<a href='.$row['Trailer_link'].' target="_blank">'.$row['Name'].'</a><br>';
 }

   //if($id>0){echo 'Movie Trailer :'.'<a href='.$row['Trailer_link'].'" target="_blank">'.$row['Trailer_link'].'</a><br><br>';}
   echo '<br>';	
 }

if($id>0){echo '<a href="index.php" target="_blank">HOME</a><br><br><br>';}

if($id<1){echo '</br> Developed by '.'<a href = :9928 target="_blank">Khomkirt Ngeonkham</a><br>';}

echo '<button onclick="myFuction()">SQL statement to DB</button>'.PHP_EOL ;
echo '<script type="text/Javascript">' .PHP_EOL. 'function myFuction(){alert("'.$sql_stmt.'");}' .PHP_EOL. '</script>';
echo '</body></html>';
}

//Free result set
mysqli_free_result($result);
mysqli_close($bd);
?>
