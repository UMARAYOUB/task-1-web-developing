<?php
// Retrieving form data
$fname = $_POST['fname'];
$dob = $_POST['dob'];
$email = $_POST['email'];
$mnumber = $_POST['mnumber'];
$gender = $_POST['gender'];
$occupation = $_POST['occupation'];
$idtype = $_POST['idtype'];
$iddated = $_POST['iddated'];
$idnumber = $_POST['idnumber'];
$issueauthority = $_POST['issueauthority'];
$issuestate = $_POST['issuestate'];
$idexpiry = $_POST['idexpiry'];

// Establishing a connection to the database
$conn = new mysqli('localhost', 'root', '', 'registration');

// Checking the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    // Preparing and executing the statement for inserting data into the 'user' table
    $stmt_user = $conn->prepare("INSERT INTO user (fname, dob, Email, mnumber, gender, occupation) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt_user->bind_param("ssssss", $fname, $dob, $email, $mnumber, $gender, $occupation); 
    $user_inserted = $stmt_user->execute();

    // Preparing and executing the statement for inserting data into the 'id_details' table
    $stmt_id = $conn->prepare("INSERT INTO id_details (idtype, iddated, idnumber, issueauthority, issuestate, idexpiry) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt_id->bind_param("ssssss", $idtype, $iddated, $idnumber, $issueauthority, $issuestate, $idexpiry); 
    $id_inserted = $stmt_id->execute();

    // Checking if both insertions were successful
    if ($user_inserted && $id_inserted) {
        echo "Registration successful.";
    } else {
        echo "Registration failed.";
    }

    // Closing the statements and database connection
    $stmt_user->close();
    $stmt_id->close();
    $conn->close();           
}
?>
