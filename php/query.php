<?php

//connection to db
$mysqli = new mysqli("localhost", "root", "", "hypermedia");
$mysqli = new mysqli("")

if (mysqli_connect_errno()) { //verify connection
    echo "Error to connect to DBMS: ".mysqli_connect_error(); //notify error
    exit(); //do nothing else 
}

else {
    echo "Successful connection"; // connection ok
}

function categorie_prodotti(){
    
$query = "SELECT nome FROM categorie_prodotti";
$result = $mysqli -> query($query);

if($result->num_rows >0)
{
    $myArray = array();
    while($row = $result -> fetch_array(MYSQL_ASSOC)){
        $myArray[] = $row;
    }
    
    echo json_encode($myArray);
}

$result -> close();
$mysqli -> close();
}


?>