<?php
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