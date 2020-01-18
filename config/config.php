<?php
ob_start(); //turns on output buffering

$timezone = date_default_timezone_set("America/New_York");



$con = mysqli_connect("localhost", "clbettis06", "5bR8RBuEw+&B", "clbettis_wrdp1");
if(mysqli_connect_errno()) {
    echo "Failed To Connect: ".mysqli_connect_errno();
}
?>