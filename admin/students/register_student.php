<?php require_once('../../config.php'); ?>
<form action="" id="registration-form">
    <input type="hidden" name="id">
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <input type="text" name="firstname" id="firstname" autofocus placeholder="Firstname" class="form-control form-control-border" required>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <input type="text" name="middlename" id="middlename" placeholder="Middlename (optional)" class="form-control form-control-border">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <input type="text" name="lastname" id="lastname" placeholder="Lastname" class="form-control form-control-border" required>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-auto">
            <div class="custom-control custom-radio">
                <input class="custom-control-input" type="radio" id="genderMale" name="gender" value="Male" required>
                <label for="genderMale" class="custom-control-label">Male</label>
            </div>
        </div>
        <div class="form-group col-auto">
            <div class="custom-control custom-radio">
                <input class="custom-control-input" type="radio" id="genderFemale" name="gender" value="Female">
                <label for="genderFemale" class="custom-control-label">Female</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <span class="text-navy"><small>Department</small></span>
                <select name="department_id" id="department_id" class="form-control form-control-border select2" data-placeholder="Select Here Department" required>
                    <option value="" disabled></option>
                    <?php
                    $department = $conn->query("SELECT * FROM `department_list` where status = 1 order by `name` asc");
                    while($row = $department->fetch_assoc()):
                        ?>
                        <option value="<?= $row['id'] ?>"><?= ucwords($row['name']) ?></option>
                    <?php endwhile; ?>
                </select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <span class="text-navy"><small>Curriculum</small></span>
                <select name="curriculum_id" id="curriculum_id" class="form-control form-control-border select2" data-placeholder="Select Here Curriculum" required>
                    <option value="" disabled selected>Select Deparment First</option>
                    <?php
                    $curriculum = $conn->query("SELECT * FROM `curriculum_list` where status = 1 order by `name` asc");
                    $cur_arr = [];
                    while($row = $curriculum->fetch_assoc()){
                        $row['name'] = ucwords($row['name']);
                        $cur_arr[$row['department_id']][] = $row;
                    }
                    ?>
                </select>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <input type="email" name="email" id="email" placeholder="Email" class="form-control form-control-border" required>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <input type="password" name="password" id="password" placeholder="Password" class="form-control form-control-border" required>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <input type="password" id="cpassword" placeholder="Confirm Password" class="form-control form-control-border" required>
            </div>
        </div>
    </div>
<!--    <div class="row">-->
<!--        <div class="col-lg-12">-->
<!--            <div class="form-group text-right">-->
<!--                <button class="btn btn-default bg-navy btn-flat"> Register</button>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
</form>

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url ?>plugins/select2/js/select2.full.min.js"></script>

<script>
    var cur_arr = $.parseJSON('<?= json_encode($cur_arr) ?>');
    $(document).ready(function(){
        end_loader();
        $('.select2').select2({
            width:"100%"
        })
        $('#department_id').change(function(){
            var did = $(this).val()
            $('#curriculum_id').html("")
            if(!!cur_arr[did]){
                Object.keys(cur_arr[did]).map(k=>{
                    var opt = $("<option>")
                    opt.attr('value',cur_arr[did][k].id)
                    opt.text(cur_arr[did][k].name)
                    $('#curriculum_id').append(opt)
                })
            }
            $('#curriculum_id').trigger("change")
        })

        // Registration Form Submit
        $('#registration-form').submit(function(e){
            e.preventDefault()
            var _this = $(this)
            $(".pop-msg").remove()
            $('#password, #cpassword').removeClass("is-invalid")
            var el = $("<div>")
            el.addClass("alert pop-msg my-2")
            el.hide()
            if($("#password").val() != $("#cpassword").val()){
                el.addClass("alert-danger")
                el.text("Password does not match.")
                $('#password, #cpassword').addClass("is-invalid")
                $('#cpassword').after(el)
                el.show('slow')
                return false;
            }
            //
            start_loader();
            $.ajax({
                url:_base_url_+"classes/Users.php?f=save_student",
                method:'POST',
                data:_this.serialize(),
                dataType:'json',
                error:err=>{
                    console.log(err)
                    el.text("An error occurred while saving the data")
                    el.addClass("alert-danger")
                    _this.prepend(el)
                    el.show('slow')
                    end_loader()
                },
                success:function(resp){
                    if(resp.status == 'success'){
                        location.href= "<?php echo base_url ?>/admin/?page=students"
                    }else if(!!resp.msg){
                        el.text(resp.msg)
                        el.addClass("alert-danger")
                        _this.prepend(el)
                        el.show('show')
                    }else{
                        el.text("An error occurred while saving the data")
                        el.addClass("alert-danger")
                        _this.prepend(el)
                        el.show('show')
                    }
                    end_loader();
                    $('html, body').animate({scrollTop: 0},'fast')
                }
            })
        })
    })
</script>