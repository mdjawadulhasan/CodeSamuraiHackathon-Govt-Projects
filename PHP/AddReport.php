<?php

if (isset($_POST["submit"])) {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $user_name = $_SESSION["user_name"];
        $id = $_POST['id'];
        $report = $_POST['report'];
        $conn = mysqli_connect('localhost', 'root', '', 'hackathon');

        $sql = "INSERT INTO reports(Id,PrID,Report) VALUES ('0','$id','$report')";

        if (mysqli_query($conn, $sql)) {
            header("location:ViewProjects.php");
            mysqli_close($conn);
        } else {
            echo '<script>alert("Try Again")</script>';
        }
    }
}

?>