<?php

$title = 'View Report';
require_once './header.php';
$Pid = $_GET['Pid'];

function ShowReport($sql)
{
    $conn = mysqli_connect('localhost', 'root', '', 'hackathon');
    $query = $sql;
    $result = mysqli_query($conn, $query);
    $idx=1;
    while ($r = mysqli_fetch_array($result)) {
        echo '<tr>';
        echo '<td><center>' . $idx . '</center></td>';
        echo '<td><center>' . $r['Report'] . '</center></td>';
        echo '</tr><center>';
        $idx++;
    }


    echo '</tbody>';
    echo '</table>';
}

function ShowProjectName($sql){
	$conn = mysqli_connect('localhost', 'root', '', 'hackathon');

    $query = $sql;
    $result = mysqli_query($conn, $query);
    while ($r = mysqli_fetch_array($result)) {
        echo $r['project_name'];
    }



}

?>

<table class="tablestyle">
        <thead>
            <tr>
                <th>ID</th>
                <th>Issues</th>
            </tr>
        </thead>
        <tbody>
</section>

<?php
// if (isset($_POST["submit"])) {
//     $dept = $_POST['search'];
//     // $year1 = $_POST['y1'];
//     // $year2 = $_POST['y2'];


//     if (empty($year1) && empty($year2)) {

        

//     } else if ($dept == null) {
//         $time_input1 = strtotime($year1);
//         $time_input2 = strtotime($year2);

//         // echo ($year1);

//         //SELECT * FROM wp_osd_properties WHERE `listing_expiration` < '2020-08-05'
//         // $qry = "SELECT * FROM project where 'project_start_time' >=  '$year1' ";

//         // qry = "SELECT * FROM project WHERE ".$time_input1." AND ". $time_input2";

//         //$qry = "SELECT * FROM project where BETWEEN '$time_input1' AND   '$time_input2' ";

//     }

//     ShowDocttor($qry);

// } else {
//     $qry = "SELECT *FROM project";
//     ShowDocttor($qry);
// }
	$qry = "SELECT * FROM reports WHERE PrId=".$Pid;
	ShowReport($qry);
	$sql="SELECT project_name from project where Pid=".$Pid;
	ShowProjectName($sql);
?>






<!-- <?php require_once './includes/footer.php'; ?> -->