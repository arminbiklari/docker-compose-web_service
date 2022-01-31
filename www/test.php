
<?php

$password = "pass";
$database = "databse";

// Create connection
$conn = new mysqli("db", "root", $password, $database);
//set charset
$conn->set_charset("utf8");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$queryString = "SELECT * FROM `$database`.`Test`";
$query = mysqli_query($conn, $queryString);
if ($query) {
  var_dump(mysqli_fetch_assoc($query));
} else {
  echo "Error query";
}
