<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/select2.min.css'), false); ?>" />
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
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php if(isset($data['row']) && $data['row']->count() > 0): ?>
                        <?php echo $__env->make($view_path.'.edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php else: ?>
                        <?php echo $__env->make($view_path.'.add', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endif; ?>

                    <div class="col-md-8 col-xs-12">
                        <?php echo $__env->make($view_path.'.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div><!-- /.row -->
            </div><!-- /.page-content -->
    </div><!-- /.main-content -->



<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <!-- page specific plugin scripts -->
    <script src="<?php echo e(asset('assets/js/select2.min.js'), false); ?>"></script>

    <script>
        $(document).ready(function () {
            /*Change Field Value on Capital Letter When Keyup*/
            $(function() {
                $('.upper').keyup(function() {
                    this.value = this.value.toUpperCase();
                });
            });
            /*end capital function*/

            $('select[name="subject_id"]').select2({
                placeholder: 'Search Course...',
                ajax: {
                    url: '<?php echo e(route('subject-name-autocomplete'), false); ?>',
                    dataType: 'json',
                    delay: 250,
                    processResults: function (data) {
                        return {
                            results: data
                        };

                    },
                    cache: true
                }

            });

            $('#load-html-btn').click(function () {

                var subject_id = $('select[name="subject_id"]').val();
                if (!subject_id)
                    toastr.warning("Please, Choose Subject.", "Warning");
                else {
                    $.ajax({
                        type: 'POST',
                        url: '<?php echo e(route('semester.subject-html'), false); ?>',
                        data: {
                            _token: '<?php echo e(csrf_token(), false); ?>',
                            id: subject_id
                        },
                        success: function (response) {
                            var data = $.parseJSON(response);
                            if (data.error) {
                                toastr.warning(data.message, "warning");
                            } else {

                                $('#subject_wrapper').append(data.html);
                                //toastr.success(data.message, "success");
                            }
                        }
                    });
                }
            });


        });
    </script>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/semester/index.blade.php ENDPATH**/ ?>