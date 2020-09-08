<?php
require "db_config.php";

class db_class{
    public $host = host;
    public $user = user;
    public $pass = password;
    public $dbname = db_name;
    public $conn;
    public $error;

    public function __construct(){
        $this->connect();
    }
    private function connect(){
        $this->conn= new mysqli($this->host, $this->user, $this->pass, $this->dbname);
        if(!$this->conn){
            $this->error= ("Fatall Error: can't connect to database". $this->conn->connect_error);
            return false;
        }
    }
    public function quickQuote($full_name, $mail, $telephone, $date, $pick_up, $drop_off, $passengers, $car, $reason){
        $stmt = $this->conn->prepare("INSERT INTO `quick_quote` (name, email, telephone, hire_date, pick_up, drop_off, passengers, car, reason)
        VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)") or die ($this->conn->error);
        $stmt->bind_param("ssssssiss", $full_name, $mail, $telephone, $date, $pick_up, $drop_off, $passengers, $car, $reason);
        if ($stmt->execute()){
            $stmt->close();
            $this->conn->close();
            return true;
        }

    }
    public function get_quote($title, $fname, $lname, $mail, $address_1, $address_2, $contact, $home, $telephone, $pcontact, $contact_time, $hdate, $pick_up, $drop_off, $passengers, $reason, $ans, $answer, $return, $ptime, $dtime, $rtime, $pick_ups, $drop_offs, $vehicle, $inquiry, $feedback){
        $stmt = $this->conn->prepare("INSERT INTO `get_quote` ( title, first_name, last_name, mail, address_1, address_2, mobile_no, home_phone_no, work_phone_no, preffered_contact, best_contact_time, hire_date, pick_up_location, drop_off_location, no_of_passengers, reason, surprise, booking_today, single_return, pick_up_time, drop_off_time, return_time, no_of_pick_ups, no_of_drop_offs, vehicle_type, add_info, how_you_heard) VALUES(?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)") or die($this->conn->error);
        $stmt->bind_param("ssssssssssssssissssssssssss", $title, $fname, $lname, $mail, $address_1, $address_2, $contact, $home, $telephone, $pcontact, $contact_time, $hdate, $pick_up, $drop_off, $passengers, $reason, $ans, $answer, $return, $ptime, $dtime, $rtime, $pick_ups, $drop_offs, $vehicle, $inquiry, $feedback);
        if($stmt->execute()){
            $stmt->close();
            $this->conn->close();
            return true;
        }
    }
}

?>