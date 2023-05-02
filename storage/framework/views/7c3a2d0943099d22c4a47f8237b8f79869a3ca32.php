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
                    <div class="col-xs-12 ">
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
    <script src="<?php echo e(asset('assets/js/select2.min.js'), false); ?>"></script>
    <script src="<?php echo e(asset('assets/js/chosen.jquery.min.js'), false); ?>"></script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        /*Change Field Value on Capital Letter When Keyup*/
        $(function() {
            $('.upper').keyup(function() {
                this.value = this.value.toUpperCase();
            });
        });

        $(document).ready(function () {

            $('#filter-btn').click(function () {

                var url = '<?php echo e($data['url'], false); ?>';
                var flag = false;
                var ip = $('input[name="ip"]').val();
                var user_agent = $('input[name="user_agent"]').val();
                var link_url = $('input[name="url"]').val();
                var user = $('select[name="user"]').val();
                var event = $('select[name="event"]').val();
                var created_at_start_date = $('input[name="created_at_start_date"]').val();
                var created_at_end_date = $('input[name="created_at_end_date"]').val();
                var updated_at_start_date = $('input[name="updated_at_start_date"]').val();
                var updated_at_end_date = $('input[name="updated_at_end_date"]').val();

                if (ip !== '') {
                    url += '?ip=' + ip;
                    flag = true;
                }

                if (user_agent !== '') {

                    if (flag) {

                        url += '&user_agent=' + user_agent;

                    } else {

                        url += '?user_agent=' + user_agent;
                        flag = true;

                    }
                }



                if (user !== '' & user >0) {

                    if (flag) {

                        url += '&user=' + user;

                    } else {

                        url += '?user=' + user;
                        flag = true;

                    }
                }

                if (event !== '') {

                    if (flag) {

                        url += '&event=' + event;

                    } else {

                        url += '?event=' + event;
                        flag = true;

                    }
                }

                if (link_url !== '') {

                    if (flag) {

                        url += '&link_url=' + link_url;

                    } else {

                        url += '?link_url=' + link_url;
                        flag = true;

                    }
                }

                if (created_at_start_date !== '') {

                    if (flag) {

                        url += '&created_at_start_date=' + created_at_start_date;

                    } else {

                        url += '?created_at_start_date=' + created_at_start_date;
                        flag = true;

                    }
                }

                if (created_at_end_date !== '') {

                    if (flag) {

                        url += '&created_at_end_date=' + created_at_end_date;

                    } else {

                        url += '?created_at_end_date=' + created_at_end_date;
                        flag = true;

                    }
                }

                if (updated_at_start_date !== '') {

                    if (flag) {

                        url += '&updated_at_start_date=' + updated_at_start_date;

                    } else {

                        url += '?updated_at_start_date=' + updated_at_start_date;
                        flag = true;

                    }
                }

                if (updated_at_end_date !== '') {

                    if (flag) {

                        url += '&updated_at_end_date=' + updated_at_end_date;

                    } else {

                        url += '?updated_at_end_date=' + updated_at_end_date;
                        flag = true;

                    }
                }

                location.href = url;

            });

        });


    </script>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/super-suit/user-activity/index.blade.php ENDPATH**/ ?>