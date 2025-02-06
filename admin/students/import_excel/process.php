<?php
// include the PhpSpreadsheet library
require 'vendor/autoload.php';

// define the database connection parameters
//$host = 'localhost';
//$user = 'root';
//$password = '';
//$dbname = 'my_database';
//
//// establish a database connection
//$mysqli = new mysqli($host, $user, $password, $dbname);
//
//// check if the connection was successful
//if ($mysqli->connect_error) {
//    die('Connection failed: ' . $mysqli->connect_error);
//}

// check if the form was submitted
if (isset($_FILES['excel-file'])) {
    // get the uploaded file information
    $file_name = $_FILES['excel-file']['name'];
    $file_temp = $_FILES['excel-file']['tmp_name'];
    $file_type = $_FILES['excel-file']['type'];
    $file_size = $_FILES['excel-file']['size'];

    // define the allowed file types
    $allowed_types = ['application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];

    // check if the file type is allowed
    if (in_array($file_type, $allowed_types)) {
        // load the Excel file using PhpSpreadsheet
        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReaderForFile($file_temp);
        $spreadsheet = $reader->load($file_temp);
        $worksheet = $spreadsheet->getActiveSheet();

        // get the header row of the Excel file
        $header_row = $worksheet->getRowIterator(1)->current();
        $header_values = [];
        foreach ($header_row->getCellIterator() as $cell) {
            $header_values[] = $cell->getValue();
        }

        // display the Excel data in a table
        echo '<table>';
        echo '<tr>';
        foreach ($header_values as $header_value) {
            echo '<th>' . $header_value . '</th>';
        }
        echo '</tr>';
        foreach ($worksheet->getRowIterator(2) as $row) {
            echo '<tr>';
            foreach ($row->getCellIterator() as $cell) {
                echo '<td>' . $cell->getValue() . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    } else {
        echo 'Invalid file type.';
    }
}
?>
