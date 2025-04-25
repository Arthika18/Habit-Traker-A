<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER["REQUEST_METHOD"] === "POST") {

$conn = new mysqli("localhost", "root", "", "signup");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    $username = trim($_POST["username"]);
    $password = $_POST["password"];


    if (empty($username) || empty($password)) {
        echo "❌ Both fields are required.";
        exit();
    }


    $stmt = $conn->prepare("SELECT password FROM arthi WHERE username = ?");
    if (!$stmt) {
        die("Prepare failed: " . $conn->error);
    }

    $stmt->bind_param("s", $username);
    $stmt->execute();


    $result = $stmt->get_result();


    if ($result && $result->num_rows === 1) {

        $row = $result->fetch_assoc();
        $hashedPassword = $row['password'];

        if (password_verify($password, $hashedPassword)) {
            echo "✅ Login successful. Welcome, $username!";
        } else {
            echo "❌ Incorrect password.";
        }
    } else {
        echo "❌ Username not found.";
    }


    $stmt->close();
    $conn->close();
} else {
    echo "❌ Invalid request method.";
}
?>

