<?php

$title = 'Write Report';
require_once './header.php';
$Pid = $_GET['Pid'];
?>



<div class="infoinput2">
    <form action="AddReport.php" method="post">
        <div class="form-group">
            <label for="exampleFormControlTextarea3">Submit Report</label>
            <textarea class="form-control" name="report" id="exampleFormControlTextarea3" rows="7" required></textarea>
        </div>
        <input type="hidden" name="id" value=" <?php echo $Pid ?>">
        <div class=" form-group">
            <br>
            <button type="submit" name="submit" class="vsubmitbtn">Add</button>
        </div>
    </form>
</div>



</html>