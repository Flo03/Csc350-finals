<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "floflo";
$password = "";
$dbname = "CSC350";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = htmlspecialchars($_POST["email"]);
    $pass = htmlspecialchars($_POST["pwd"]);
    $fname = htmlspecialchars($_POST["firstname"]);

    // Check if inputs are not empty
    if (empty($email) || empty($pass) || empty($fname)) {
        die("Please fill all fields.");
    }

    // Prepare the SQL statement
    if ($stmt = $conn->prepare("INSERT INTO Admin (FirstName, Email, Password) VALUES (?, ?, ?)")) {
        $stmt->bind_param("sss", $fname, $email, $pass);

        if ($stmt->execute()) {
            echo "<!DOCTYPE html>
    <html>
    <head>
        <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap' rel='stylesheet'>
        <style>
            body {
                font-family: 'Roboto', sans-serif;
                background-color: #f8f9fa;
            }
            .container {
                max-width: 600px;
                margin: 320px auto 0;
            }
            .alert {
                margin-top: 100px;
                border-radius: 5px;
            }
            a {
                color: #007bff;
            }
        </style>
    </head>
    <body>
        <div class='container'>
            <div class='alert alert-success' role='alert'>
                <h4 class='alert-heading' style='text-align: center'>Congratulations!</h4>
                <p style='text-align: center'>Registration successful.</p>
                <hr>
                <p class='mb-0' style='text-align: center'>You can now <a href='login.html'>login</a>.</p>
            </div>
        </div>
    </body>
    </html>";
        } else {
            echo "Execute failed: " . $stmt->error;
        }

        // Close the statement
        $stmt->close();
    } else {
        echo "Prepare failed: " . $conn->error;
    }

    // Close the connection
    $conn->close();
} else {
    echo "Invalid request method.";
}
?>
