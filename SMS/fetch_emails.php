<?php
header('Content-Type: application/json');
include 'database.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['role'])) {
    $role = $_POST['role'];
    $emails = [];

    switch ($role) {
        case 'Teacher':
            $sql = "SELECT email FROM teacher";
            break;
        case 'Student':
            $sql = "SELECT email FROM student";
            break;
        case 'Parent':
            $sql = "SELECT email FROM parent";
            break;
        default:
            echo json_encode([]);
            exit;
    }

    // Execute the query
    $result = $conn->query($sql);

    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $emails[] = $row['email'];
        }
    }

    echo json_encode($emails);
} else {
    echo json_encode(['error' => 'Invalid request']);
}
?>
