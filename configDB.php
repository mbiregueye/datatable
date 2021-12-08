<?php
define('DB_SERVER', 'localhost');

define('DB_USERNAME', 'root');

define('DB_PASSWORD', '');

define('DB_NAME', 'db_datatable');

$DBconnect = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if (!$DBconnect) {
    die("Connection failed: " . mysqli_connect_error());
}
//mysqli_close($DBconnect);