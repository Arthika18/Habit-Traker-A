<?php
// Turn on error reporting (for development)
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Connect to database
$host = "localhost";
$dbUsername = "root";
$dbPassword = ""; // Put your password if any
$dbName = "signup";

// Create connection
$conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get POST data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'] ?? '';
    $rating = $_POST['rating'] ?? 0;
    $feedback = $_POST['feedback'] ?? '';

    if (!empty($name) && !empty($rating) && !empty($feedback)) {
        // Insert into database
        $stmt = $conn->prepare("INSERT INTO review (name, rating, feedback) VALUES (?, ?, ?)");
        $stmt->bind_param("sis", $name, $rating, $feedback);

        if ($stmt->execute()) {
            echo "<script>alert('Review submitted successfully!'); window.location.href = 'Review.html';</script>";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Please fill all fields.";
    }
}

$conn->close();
?>
