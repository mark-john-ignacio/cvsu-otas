<?php require_once('./config.php'); ?>
<?php
print_r($_settings);
?>


<form action="" method="post">
    <div class="form-group">
        <label for="curriculum_select">Select Curriculum:</label>
        <select class="form-control" id="curriculum_select" name="curriculum">
            <?php
            require_once('config.php');
            $result = $conn->query("SELECT id, name FROM `curriculum_list` WHERE status = 1 ORDER BY `name` ASC");
            while ($row = $result->fetch_assoc()) {
                echo "<option value='{$row['id']}'>{$row['name']}</option>";
            }
            ?>
        </select>
    </div>
    <input type="submit" value="Submit">
</form>

<?php
if(isset($_POST['curriculum'])){
    $curriculum_id = $_POST['curriculum'];
    // do something with the selected curriculum's id
    echo $curriculum_id;
}
?>

<?php




if (extension_loaded('pdflib')) {
    echo "PDFlib is active and available for use.";
} else {
    echo "PDFlib is not active or not installed.";
}


if ($db->connect_error) {
    die("Connection to MySQL database failed: " . $db->connect_error);
} else {
    echo "Connected to MySQL database successfully!";
}




// Get the current protocol (http or https)
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";

// Get the current domain name
$domain = $_SERVER['SERVER_NAME'];

// Get the current script path (e.g., /folder/index.php)
$script_path = $_SERVER['PHP_SELF'];

// Get the base URL
global $base_url;
$base_url = $protocol . $domain . $script_path;

// Print the base URL
echo "Base URL: " . $base_url;


// Display the PHP version
echo phpinfo();




$testGD = get_extension_funcs("gd"); // Grab function list
if (!$testGD) {
    echo "GD not even installed.";
    exit;
}
echo "<pre>" . print_r($testGD, true) . "</pre>";