<?php
require_once "class.php"; 
$conn = new db_class();   

if(isset($_POST['submit'])){
    $title =$_POST['title'];
    $fname =$_POST['fname'];
    $lname = $_POST['lname'];
    $mail = $_POST['mail'];
    $address_1 = $_POST['address_1'];
    $address_2 = $_POST['address_2'];
    $contact = $_POST['contact'];
    $home = $_POST['home'];
    $telephone = $_POST['telephone'];
    $pcontact = $_POST['pcontact'];
    $contact_time = $_POST['contact_time'];
    $hdate = $_POST['hdate'];
    $pick_up = $_POST['pick_up'];
    $drop_off = $_POST['drop_off'];
    $passengers = $_POST['passengers'];
    $reason = $_POST['reason'];
    $ans = $_POST['ans'];
    $answer = $_POST['answer'];
    $return = $_POST['return'];
    $ptime = $_POST['ptime'];
    $dtime = $_POST['dtime'];
    $rtime = $_POST['rtime'];
    $pick_ups = $_POST['pick_ups'];
    $drop_offs = $_POST['drop_offs'];
    $vehicle = $_POST['car'];
    $inquiry = $_POST['inquiry'];
    $feedback = $_POST['feedback'];


    $conn->get_quote ($title, $fname, $lname, $mail, $address_1, $address_2, $contact, $home, $telephone, $pcontact, $contact_time, $hdate, $pick_up, $drop_off, $passengers, $reason, $ans, $answer, $return, $ptime, $dtime, $rtime, $pick_ups, $drop_offs, $vehicle, $inquiry, $feedback);

    echo '<script>alert("Successfully saved!")</script>';
	
}

?>