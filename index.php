<?php

include  'conn.php';
echo "i got you " ;
	
$inputJSON = file_get_contents("php://input");
$input = json_decode($inputJSON, true);

//echo ($input['email']);
//echo ($input['name']);
//echo ($input['phone']);


$sql = "INSERT INTO users (email, name, phone)
VALUES ('".$input['email']."', '".$input['name']."', '".$input['phone']."')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>