<?php require("connection.php");
session_start();
if (!isset($_SESSION["Email"])) {
    header("location:login.php");
    exit();
}
?>

<?php
$url =$_SESSION['url'];
$id = $_REQUEST["id"];
$accept = 0;
$query = "UPDATE ads SET status='$accept' WHERE Id='$id'";
$run = $connection->query($query);

if ($run) {
    header("location:$url");
}
?>