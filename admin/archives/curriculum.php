<?php
require_once('../../config.php');

$department_id = $_POST['department_id'];
$curriculum = $conn->query("SELECT * FROM `curriculum_list` where status = 1 and department_id = $department_id order by `name` asc");
$options = "<option value='' disabled selected>Select Curriculum</option>";
while($row = $curriculum->fetch_assoc()){
    $options .= "<option value='{$row['id']}'>".ucwords($row['name'])."</option>";
}
echo $options;
