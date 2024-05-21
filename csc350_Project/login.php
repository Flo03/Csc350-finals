<?php
$servername = "localhost";
$username = "floflo";
$password = "";
$dbname = "CSC350";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $pass = $_POST["pwd"];

    if ($stmt = $conn->prepare("SELECT password FROM Admin WHERE email = ?")) {
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows == 1) {
            $stmt->bind_result($password_from_db);
            $stmt->fetch();

            if ($pass == $password_from_db) {
                $_SESSION["loggedin"] = true;
                $_SESSION["email"] = $email;

                // Redirect to a new page
                header("Location: index.html");
                exit();
            } else {
                header("Location: login.html");
            }
        } else {
            echo "Invalid email or password.";
        }

        $stmt->close();
    } else {
        echo "Error: " . $conn->error;
    }

    $conn->close();
}
?>
<br>
<a href="login.html">Press this to go back</a>
