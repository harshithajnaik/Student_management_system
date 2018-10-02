<?php 
// DB credentials.
define('DB_HOST','siliconcitydb.cdc93webrjny.ap-south-1.rds.amazonaws.com');
define('DB_USER','NateshM');
define('DB_PASS','arizona_1234');
define('DB_NAME','siliconcity_01');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>
