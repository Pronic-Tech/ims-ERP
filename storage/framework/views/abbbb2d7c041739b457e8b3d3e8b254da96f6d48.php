<?php $__env->startSection('css'); ?>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <?php echo $__env->make('layouts.includes.template_setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                <div class="page-header">
                    <h1>
                        <?php echo $__env->make('examination.mark-sheet.includes.breadcrumb-primary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                             Detail
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('examination.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-md-12 col-xs-12">
                        <?php echo $__env->make('examination.mark-sheet.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>

                    <div class="col-md-12 col-xs-12">
                        <?php echo $__env->make('examination.mark-sheet.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div><!-- /.row -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->



<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <!-- page specific plugin scripts -->



    <script>
        $(document).ready(function () {
            $('.print-marksheets').click(function () {
                /*console.log('ok');
                return false;*/
                $grading = $('#typeGrading').is(':checked');
                $percentage = $('#typePercentage').is(':checked');
                $ledger = $('#typeLedger').is(':checked');
                //return false;
                if($grading || $percentage || $ledger){
                    $chkIds = document.getElementsByName('chkIds[]');
                    var $chkCount = 0;
                    $length = $chkIds.length;

                    for(var $i = 0; $i < $length; $i++){
                        if($chkIds[$i].type == 'checkbox' && $chkIds[$i].checked){
                            $chkCount++;
                        }
                    }

                    if($chkCount <= 0){
                        toastr.info("Please, Select At Least One Record.","Info:");
                        return false;
                    }

                    $('#print-student-marksheet').submit();

                }else{
                    toastr.info("Please, Select Result Your Target Result Type - Grading or Percentage.","Info:");
                    return false;
                }

            });

        });

        function loadSemesters($this) {
            var year = $('select[name="years_id"]').val();
            var month = $('select[name="months_id"]').val();
            var exam = $('select[name="exams_id"]').val();
            var faculty = $('select[name="faculty"]').val();

            if (year == 0) {
                toastr.info("Please, Select Year", "Info:");
                return false;
            }

            if (month == 0) {
                toastr.info("Please, Select Month", "Info:");
                return false;
            }

            if (exam == 0) {
                toastr.info("Please, Select Exam Type", "Info:");
                return false;
            }

            if (faculty == 0) {
                toastr.info("Please, Select Faculty/Class", "Info:");
                return false;
            }

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
                        toastr.warning(data.error, "Warning");
                    } else {
                        $('.semester_select').html('').append('<option value="0">Select Sem./Sec.</option>');
                        $.each(data.semester, function(key,valueObj){
                            $('.semester_select').append('<option value="'+valueObj.id+'">'+valueObj.semester+'</option>');
                        });
                        toastr.success(data.success, "Success:");
                    }
                }
            });

        }

        function loadStudent($this) {
            var url = '<?php echo e($data['url'], false); ?>';
            var flag = false;
            var year = $('select[name="years_id"]').val();
            var month = $('select[name="months_id"]').val();
            var exam = $('select[name="exams_id"]').val();
            var faculty = $('select[name="faculty"]').val();
            var semester = $('select[name="semester_select"]').val();

            if (year !== 0) {
                url += '?year=' + year;
                flag = true;
            }else{
                toastr.info('Please Select Year','Info:');
                return false;
            }

            if (month !== 0) {
                if (flag) {
                    url += '&month=' + month;
                } else {
                    url += '?month=' + month;
                    flag = true;
                }
            }else{
                toastr.info('Please Select Schedule Exam','Info:');
                return false;
            }


            if (exam !== 0) {
                if (flag) {
                    url += '&exam=' + exam;
                } else {
                    url += '?exam=' + exam;
                    flag = true;
                }
            }else{
                toastr.info('Please Select Schedule Exam','Info:');
                return false;
            }

            if (faculty !== 0) {
                if (flag) {
                    url += '&faculty=' + faculty;
                } else {
                    url += '?faculty=' + faculty;
                    flag = true;
                }
            }else{
                toastr.info('Please Select Faculty/Class','Info:');
                return false;
            }

            if (semester !== 0) {
                if (flag) {
                    url += '&semester=' + semester;
                } else {
                    url += '?semester=' + semester;
                    flag = true;
                }
            }else{
                toastr.info('Please Select Sem./Sec.','Info:');
                return false;
            }


            if(flag == true){
                location.href = url;
            }else{
                toastr.info("Please, Select Your Target Schedule", "Info:");
                return false;
            }

        }

    </script>
    <?php echo $__env->make('includes.scripts.jquery_validation_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-sheet/index.blade.php ENDPATH**/ ?>