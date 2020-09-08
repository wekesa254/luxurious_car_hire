<?php
require_once "class.php"; 
$conn = new db_class();   

if(isset($_POST['submit'])){
    $full_name =$_POST['your_name'];
    $mail =$_POST['mail'];
    $telephone = $_POST['telephone'];
    $date = $_POST['date'];
    $pick_up = $_POST['pick_up'];
    $drop_off = $_POST['drop_off'];
    $passengers = $_POST['passengers'];
    $car = $_POST['car'];
    $reason = $_POST['reason'];


    $conn->quickQuote ($full_name, $mail, $telephone, $date, $pick_up, $drop_off, $passengers, $car, $reason);

    echo '<script>alert("Successfully saved!")</script>';
	echo '<script>window.location= "index.php"</script>';
}

?>