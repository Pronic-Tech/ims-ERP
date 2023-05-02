<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <?php echo $__env->make('layouts.includes.template_setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="page-header">
                    <h1>
                        <?php echo $__env->make($view_path.'.includes.breadcrumb-primary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Add
                        </small>
                    </h1>
                </div><!-- /.page-header -->
                <div class="row">
                    <?php echo $__env->make('attendance.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                    <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- PAGE CONTENT BEGINS -->

                         <?php echo Form::open(['route' => $base_route.'.store', 'method' => 'POST', 'class' => 'form-horizontal',
                                                  'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                            <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                            <?php echo $__env->make($view_path.'.includes.staff', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                            <div class="form-group">

                                <label class="pos-rel">
                                    <?php echo Form::radio('send_alert', 1, false, ['class' => 'ace', "required"]); ?>

                                    <span class="lbl"></span> <span class="label label-info" >Send Attendance Alert to All </span>
                                </label>

                                <label class="pos-rel">
                                    <?php echo Form::radio('send_alert', 2, false, ['class' => 'ace', "required"]); ?>

                                    <span class="lbl"></span> <span class="label label-danger" >Send Absent Notification </span>
                                </label>

                                <label class="pos-rel">
                                    <?php echo Form::radio('send_alert', 3, false, ['class' => 'ace', "required"]); ?>

                                    <span class="lbl"></span> <span class="label label-danger" >Send Absent Alert to Heads</span>
                                </label>

                                <label class="pos-rel">
                                    <?php echo Form::radio('send_alert', 0, true, ['class' => 'ace', "required"]); ?>

                                    <span class="lbl"></span> <span class="label label-warning" >Alert Not Required</span>
                                </label>

                            </div>
                                <label class="pos-rel">
                                    <span class="lbl"></span> <span class="label label-success" >
                                            If you want to Send Absent Alert to Heads, manage Heads Number on STAFF_ABSENT_NOTIFICATION_HEAD_NUMBERS Variable in .env
                                        </span>
                                </label>
                            <div class="clearfix form-actions">
                                <div class="col-md-12 align-right">
                                    <button class="btn" type="reset">
                                        <i class="fa fa-undo bigger-110"></i>
                                        Reset
                                    </button>
                                    &nbsp; &nbsp; &nbsp;
                                    <button class="btn btn-info" type="submit" id="submit-attendance">
                                        <i class="fa fa-save bigger-110"></i>
                                        Save Attendance
                                    </button>
                                </div>
                            </div>
                            <div class="hr hr-24"></div>
                            <?php echo Form::close(); ?>

                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
   <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <script>
        $(document).ready(function () {
            $( "input[name=mark-all]" ).on( "change", function($this){
                status = $( "input[name=mark-all]:checked").val();
                if(status == 1){
                    $(this).closest('table').find("input:radio.status-1")
                        .each(function(){
                            $(".status-1").prop("checked", true);
                        });
                }else if(status == 2){
                    $(this).closest('table').find("input:radio.status-1")
                        .each(function(){
                            $(".status-2").prop("checked", true);
                        });
                }else if(status == 3){
                    $(this).closest('table').find("input:radio.status-1")
                        .each(function(){
                            $(".status-3").prop("checked", true);
                        });
                }else if(status == 4){
                    $(this).closest('table').find("input:radio.status-1")
                        .each(function(){
                            $(".status-4").prop("checked", true);
                        });
                }else if(status == 5){
                    $(this).closest('table').find("input:radio.status-1")
                        .each(function(){
                            $(".status-5").prop("checked", true);
                        });
                }else{

                }
            });

        });

        function loadStaff($this) {
            var date = $('input[name="date"]').val();
            var designation = $('select[name="designation"]').val();

            if (date == "") {
                toastr.info("Please, Select Date", "Info:");
                return false;
            }

            /*if (designation == 0) {
                toastr.info("Please, Select Designation", "Info:");
                return false;
            }*/

            $.ajax({
                type: 'POST',
                url: '<?php echo e(route('attendance.staff-html'), false); ?>',
                data: {
                    _token: '<?php echo e(csrf_token(), false); ?>',
                    date: date,
                    designation_id: designation
                },
                success: function (response) {
                    var data = $.parseJSON(response);
                    if(data.error){
                        toastr.warning(data.error, "Warning:");
                    }else{
                        if(data.exist){
                            $('#staff_wrapper').empty();
                            $('#staff_wrapper').append(data.exist);
                            $('#staffsTable tr:last').after(data.staffs);
                        }else{
                            toastr.success(data.message, "Success:");
                            $('#staff_wrapper').empty();
                            $('#staff_wrapper').append(data.staffs);
                        }
                    }
                }
            });
        }

        /*Schedule Now*/
        $('#submit-attendance').click(function () {
            var date = $('input[name="date"]').val();
            var designation = $('select[name="designation"]').val();

            if (date == "") {
                toastr.info("Please, Select Date", "Info:");
                return false;
            }

            /*if (designation == 0) {
                toastr.info("Please, Select Designation", "Info:");
            }*/

            location.href = url;

        });
        /*End Schedule Now*/
    </script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/attendance/staff/add.blade.php ENDPATH**/ ?>