<?php
$connection=new mysqli("localhost","root","","reb");
if($connection){
    echo "Connection Build";
}
else{
    echo "Connection Failed";
}
?>