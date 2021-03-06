<?php
header('Access-Control-Allow-Origin: *');
$mysqli = new mysqli("localhost", "polidoriscibetta", "", "my_polidoriscibetta");

if (mysqli_connect_errno()) { //verify connection
    echo "Error to connect to DBMS: ".mysqli_connect_error(); //notify error
    exit(); //do nothing else 
}

else {
    
    mysqli_set_charset($mysqli,"utf8");
    //echo "Successful connection"; // connection ok

    # extract results mysqli_result::fetch_array
    $select = $_POST["select"];
    $table = $_POST["table"];
    $where = $_POST["where"];
    
    $query = "SELECT $select FROM $table WHERE $where";
    //query execution
    $result = $mysqli->query($query);
    //if there are data available
    if($result->num_rows >0)
    {
        $myArray = array();//create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $rowbr = array_map("nl2br", $row);
            $myArray[] = $rowbr;
        }
        echo json_encode($myArray);
    }

    //free result
    $result->close();

    //close connection
    $mysqli->close();



}





?>
