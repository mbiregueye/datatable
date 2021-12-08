<?php
define('DB_SERVER', 'localhost');

define('DB_USERNAME', 'root');

define('DB_PASSWORD', '');

define('DB_NAME', 'db_datatable');

$DBconnect = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
//echo "Connect Successfully. Host info: " . mysqli_get_host_info($DBconnect);

if (!$DBconnect) {
    die("Connection failed: " . mysqli_connect_error());
}
//mysqli_close($DBconnect);