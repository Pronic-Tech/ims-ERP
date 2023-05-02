<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/jquery-ui.custom.min.css'), false); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/bootstrap-datepicker3.min.css'), false); ?>" />
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
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <?php echo $__env->make($view_path.'.includes.search_form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- PAGE CONTENT BEGINS -->
                            <div class="form-horizontal">
                                <?php echo $__env->make($view_path.'.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.jquery_validation_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $(document).ready(function () {

            /*Change Field Value on Capital Letter When Keyup*/
            $(function() {
                $('.upper').keyup(function() {
                    this.value = this.value.toUpperCase();
                });
            });
            /*end capital function*/

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

            $('#filter-btn').click(function () {

                var url = '<?php echo e($data['url'], false); ?>';
                var flag = false;
                var bank_name = $('input[name="bank_name"]').val();
                var ac_name = $('input[name="ac_name"]').val();
                var ac_number = $('input[name="ac_number"]').val();
                var branch = $('input[name="branch"]').val();

                if (bank_name !== '') {
                    url += '?bank_name=' + bank_name;
                    flag = true;
                }

                if (ac_name !== '') {

                    if (flag) {

                        url += '&ac_name=' + ac_name;

                    } else {

                        url += '?ac_name=' + ac_name;
                        flag = true;

                    }
                }

                if (ac_number !== '') {

                    if (flag) {

                        url += '&ac_number=' + ac_number;

                    } else {

                        url += '?ac_number=' + ac_number;
                        flag = true;

                    }
                }

                if (branch !== '') {

                    if (flag) {

                        url += '&branch=' + branch;

                    } else {

                        url += '?branch=' + branch;
                        flag = true;

                    }
                }

                location.href = url;

            });


        });

    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/bank/index.blade.php ENDPATH**/ ?>