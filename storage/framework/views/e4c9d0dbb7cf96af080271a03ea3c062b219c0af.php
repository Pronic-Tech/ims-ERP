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
                    <?php echo $__env->make('account.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                        <?php echo $__env->make('account.fees.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="form-horizontal">
                            <?php echo $__env->make($view_path.'.includes.search_form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <div class="hr hr-18 dotted hr-double"></div>
                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->
                <?php echo $__env->make($view_path.'.includes.feemaster_table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $('#filter-btn').click(function () {
            <?php echo $__env->make('student.includes.common-script.student_filter_common_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            var fee_due_date_start = $('input[name="fee_due_date_start"]').val();
            var fee_due_date_end = $('input[name="fee_due_date_end"]').val();
            var fee_heads = $('select[name="fee_heads"]').val();
            var amount_start = $('input[name="amount_start"]').val();
            var amount_end = $('input[name="amount_end"]').val();

            if (fee_due_date_start !== '') {
                if (flag) {
                    url += '&fee_due_date_start=' + fee_due_date_start;
                } else {
                    url += '?fee_due_date_start=' + fee_due_date_start;
                    flag = true;
                }
            }

            if (fee_due_date_end !== '') {
                if (flag) {
                    url += '&fee_due_date_end=' + fee_due_date_end;
                } else {
                    url += '?fee_due_date_end=' + fee_due_date_end;
                    flag = true;
                }
            }

            if (fee_heads > 0) {
                if (flag) {
                    url += '&fee_heads=' + fee_heads;
                } else {
                    url += '?fee_heads=' + fee_heads;
                    flag = true;
                }
            }

            if (amount_start !== '') {
                if (flag) {
                    url += '&amount_start=' + amount_start;
                } else {
                    url += '?amount_start=' + amount_start;
                    flag = true;
                }
            }

            if (amount_end !== '') {
                if (flag) {
                    url += '&amount_end=' + amount_end;
                } else {
                    url += '?amount_end=' + amount_end;
                    flag = true;
                }
            }
            location.href = url;
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/master/index.blade.php ENDPATH**/ ?>