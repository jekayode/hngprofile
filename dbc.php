<?php
$servername = "localhost";
$username = "hcvwvprmyw";
$password = "bqcX3PaeBb";
$dbname = "hcvwvprmyw";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // sql to create table
    $sql = "CREATE TABLE coins (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(30) NOT NULL,
    pair VARCHAR(30) NOT NULL,
    buy INT(50),
    sell INT(50),
    rec_date TIMESTAMP
    )";

    // use exec() because no results are returned
    $conn->exec($sql);
    echo "Table MyGuests created successfully";
    }
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;
?>