<?php $__env->startSection('css'); ?>


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
                            List
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12 ">
                        <?php echo $__env->make('mcq.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- PAGE CONTENT BEGINS -->
                        <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <div class="form-horizontal ">
                                <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <div class="hr hr-18 dotted hr-double"></div>
                        </div>
                    </div><!-- /.col -->

                    <?php echo $__env->make($view_path.'.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                </div><!-- /.row -->
            </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <?php echo $__env->make('includes.scripts.jquery_validation_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">

        $('#exam_type').change(function() {
            var type = $(this).val();
            if(type == '') {
                $('#startdatetimeDiv').hide();
                $('#enddatetimeDiv').hide();
                $('#startdateDiv').hide();
                $('#enddateDiv').hide();
            } else if(type == 'duration') {
                $('#startdatetimeDiv').hide();
                $('#enddatetimeDiv').hide();
                $('#startdateDiv').hide();
                $('#enddateDiv').hide();
            } else if(type == 'date_duration') {
                $('#startdateDiv').show();
                $('#enddateDiv').show();

                $('#startdatetimeDiv').hide();
                $('#enddatetimeDiv').hide();

                $('#startdate').datetimepicker({
                    viewMode: 'years',
                    format: 'YYYY-MM-DD'
                });
                $('#enddate').datetimepicker({
                    viewMode: 'years',
                    format: 'YYYY-MM-DD'
                });
            } else if(type == 'date_time_duration') {
                $('#startdatetimeDiv').show();
                $('#enddatetimeDiv').show();

                $('#enddateDiv').hide();
                $('#startdateDiv').hide();

                $('#startdatetime').datetimepicker({
                    viewMode: 'years',
                    format: 'YYYY-MM-DD hh:mm a'
                });
                $('#enddatetime').datetimepicker({
                    viewMode: 'years',
                    format: 'YYYY-MM-DD hh:mm a'
                });
            }
        });


        $(document).ready(function ($) {

            $("form").submit(function() {
                $(this).find(":input").filter(function(){ return !this.value; }).attr("disabled", "disabled");
                return true; // ensure form still submits
            });

               var type = "";
               if(type == '') {
                   $('#startdatetimeDiv').hide();
                   $('#enddatetimeDiv').hide();
                   $('#startdateDiv').hide();
                   $('#enddateDiv').hide();
               } else if(type == 'duration') {
                   $('#startdatetimeDiv').hide();
                   $('#enddatetimeDiv').hide();
                   $('#startdateDiv').hide();
                   $('#enddateDiv').hide();
               } else if(type == 'date_duration') {
                   $('#startdateDiv').show();
                   $('#enddateDiv').show();

                   $('#startdatetimeDiv').hide();
                   $('#enddatetimeDiv').hide();

                   $('#startdate').datetimepicker({
                       viewMode: 'years',
                       format: 'DD-MM-YYYY'
                   });
                   $('#enddate').datetimepicker({
                       viewMode: 'years',
                       format: 'DD-MM-YYYY'
                   });
               } else if(type == 'date_time_duration') {
                   $('#startdatetimeDiv').show();
                   $('#enddatetimeDiv').show();

                   $('#enddateDiv').hide();
                   $('#startdateDiv').hide();

                   $('#startdatetime').datetimepicker({
                       viewMode: 'years',
                       format: 'DD-MM-YYYY hh:mm a'
                   });
                   $('#enddatetime').datetimepicker({
                       viewMode: 'years',
                       format: 'DD-MM-YYYY hh:mm a'
                   });
               } else {
                   $('#startdateDiv').hide();
                   $('#enddateDiv').hide();
                   $('#startdatetimeDiv').hide();
                   $('#enddatetimeDiv').hide();
                   $('#validDaysDiv').hide();
                   $('#costDiv').hide();
               }

        });



           function loadSemesters($this) {
               $.ajax({
                   type: 'POST',
                   url: '<?php echo e(route('student.find-semester'), false); ?>',
                   data: {
                       _token: '<?php echo e(csrf_token(), false); ?>',
                       faculty_id: $this.value
                   },
                   success: function (response) {
                       var data = $.parseJSON(response);
                       if (data.error) {
                           $.notify(data.message, "warning");
                       } else {
                           $('.semesters_id').html('').append('<option value="0">Select Sem./Sec.</option>');
                           $.each(data.semester, function(key,valueObj){
                               $('.semesters_id').append('<option value="'+valueObj.id+'">'+valueObj.semester+'</option>');
                           });
                       }
                   }
               });

           }

           function loadSubject($this) {
               var faculty = $('select[name="faculty"]').val();
               var semester = $('select[name="semesters_id"]').val();


               if (faculty == 0) {
                   toastr.info("Please, Select Faculty/Class", "Info:");
                   return false;
               }

               if (semester == 0) {
                   toastr.info("Please, Select Sem./Sec.", "Info:");
                   return false;
               }

               if (!semester)
                   toastr.warning("Please, Choose Semester.", "Warning");
               else {
                   $.ajax({
                       type: 'POST',
                       url: '<?php echo e(route('mcq.exam.find-subject'), false); ?>',
                       data: {
                           _token: '<?php echo e(csrf_token(), false); ?>',
                           faculty_id: faculty,
                           semester_id: semester
                       },
                       success: function (response) {
                           var data = $.parseJSON(response);
                           if (data.error) {
                               $('.semester_subject').html('')
                               toastr.warning(data.error, "Warning:");
                           } else {
                               $('.semester_subject').html('').append('<option value="0">Select Subject</option>');
                               $.each(data.subjects, function (key, valueObj) {
                                   $('.semester_subject').append('<option value="' + key + '">' + valueObj + '</option>');
                               });
                               toastr.success(data.success, "Success:");
                           }
                       }
                   });
               }

           }


    </script>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/exam/online-exam/index.blade.php ENDPATH**/ ?>