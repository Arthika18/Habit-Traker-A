<?php
// Display all errors for debugging (remove this in production)
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Database connection settings
$host = "localhost";
$dbUsername = "root";
$dbPassword = ""; // or your DB password
$dbName = "signup";

// Connect to database
$conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}

// Handle POST request
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $habitName = $_POST["Habit_name"];
    $frequency = $_POST["Frequency"];
    $time = $_POST["Time"];
    $date = $_POST["Date"];

    // Validate inputs
    if (!empty($habitName) && !empty($frequency) && !empty($time) && !empty($date)) {
        // Prepare and execute query
        $stmt = $conn->prepare("INSERT INTO habits (Habit_name, Frequency, Time, Date) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $habitName, $frequency, $time, $date);

        if ($stmt->execute()) {
            // Redirect or alert
            echo "<script>alert('Habit added successfully!'); window.location.href = 'Features.html';</script>";
        } else {
            echo "Error inserting habit: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Please fill all the fields.";
    }
}

$conn->close();
?>
