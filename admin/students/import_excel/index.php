<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<form id="import-form" action="" method="post" enctype="multipart/form-data">
    <input type="file" name="file" accept=".xlsx, .xls, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel">
    <button type="submit" id="submit-btn">Import</button>
</form>

</body>
</html>

<script>
    $(document).ready(function() {
        $('#import-form').submit(function(event) {
            event.preventDefault(); // prevent default form submission

            // get the form data
            var formData = new FormData(this);

            // send the form data using AJAX
            $.ajax({
                _base_url_+"admin/students/import_excel/process.php",
                type: $(this).attr('method'),
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(response) {
                    // handle the server response
                    console.log(response);
                    window.location = _base_url_+"admin/students/import_excel/process.php";
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // handle the AJAX error
                    console.log(textStatus + ': ' + errorThrown);
                }
            });
        });
    });

</script>

