
<fieldset>
    <div class="input-group my-3">
        <legend for="citation_input">Citation</legend>
        <input type="text" class="form-control" value="<?= !empty($citation_input) ? html_entity_decode($citation_input) : "No citation declared yet"?>" id="citation_input">
        <div class="input-group-append">
            <button id="copy-citation-button" class="btn btn-outline-primary fa fa-copy"></button>
        </div>
    </div>

</fieldset>
<script>
    if (document.getElementById("uni_modal")) {
        $('#uni_modal').on('shown.bs.modal', function () {
            document.getElementById("copy-citation-button").addEventListener("click", function() {
                var inputValue = document.getElementById("citation_input").value;
                navigator.clipboard.writeText(inputValue).then(function() {
                    document.getElementById("copy-citation-button").classList.add("fa-check-circle");
                    document.getElementById("copy-citation-button").classList.remove("fa-copy");
                }, function(err) {
                    alert("Failed to copy text: ", err);
                });
            });
        });
    }

    document.getElementById("copy-citation-button").addEventListener("click", function() {
        var inputValue = document.getElementById("citation_input").value;
        navigator.clipboard.writeText(inputValue).then(function() {
            document.getElementById("copy-citation-button").classList.add("fa-check-circle");
            document.getElementById("copy-citation-button").classList.remove("fa-copy");
        }, function(err) {
            alert("Failed to copy text: ", err);
        });
    });

</script>