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
                             Detail
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('examination.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-md-12 col-xs-12">
                        <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <div class="form-horizontal">
                            <?php echo $__env->make($view_path.'.includes.search_form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <div class="hr hr-18 dotted hr-double"></div>
                        </div>
                    </div>

                    <div class="col-md-12 col-xs-12">
                        <?php echo $__env->make($view_path.'.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
            $('#filter-btn').click(function () {
                var url = '<?php echo e($data['url'], false); ?>';
                var flag = false;
                var year = $('select[name="years_id"]').val();
                var month = $('select[name="months_id"]').val();
                var exam = $('select[name="exams_id"]').val();
                var faculty = $('select[name="faculty"]').val();
                var semester = $('select[name="semester_select"]').val();

                if (year !== '' & year >0) {
                    if (flag) {
                        url += '&year=' + year;
                    } else {
                        url += '?year=' + year;
                        flag = true;
                    }
                }

                if (month !== '' & month >0) {
                    if (flag) {
                        url += '&month=' + month;
                    } else {
                        url += '?month=' + month;
                        flag = true;
                    }
                }

                if (exam !== '' & exam >0) {
                    if (flag) {
                        url += '&exam=' + exam;
                    } else {
                        url += '?exam=' + exam;
                        flag = true;
                    }
                }

                if (faculty !== '' & faculty >0) {
                    if (flag) {
                        url += '&faculty=' + faculty;
                    } else {
                        url += '?faculty=' + faculty;
                        flag = true;
                    }
                }

                if (semester !== '' & semester >0) {
                    if (flag) {
                        url += '&semester=' + semester;
                    } else {
                        url += '?semester=' + semester;
                        flag = true;
                    }
                }

                if(flag == true){
                    location.href = url;
                }else{
                    toastr.info("Please, Select Your Target Schedule", "Info:");
                    return false;
                }

            });
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
                        $('.semester_select').html('').append('<option value="0">Select Sem./Sec.</option>');
                        $.each(data.semester, function(key,valueObj){
                            $('.semester_select').append('<option value="'+valueObj.id+'">'+valueObj.semester+'</option>');
                        });
                    }
                }
            });

        }

    </script>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/schedule/index.blade.php ENDPATH**/ ?>