<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/chosen.min.css'), false); ?>" />
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
                        <?php echo $__env->make('account.transaction.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <div class="col-md-12 col-xs-12">
                            <?php if(isset($data['row']) && $data['row']->count() > 0): ?>
                                <?php echo $__env->make($view_path.'.edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php else: ?>
                                <?php echo $__env->make($view_path.'.add', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php endif; ?>

                        </div>
                        <div class="col-md-12 col-xs-12">
                            <?php echo $__env->make($view_path.'.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>
                </div><!-- /.row -->
            </div>

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->



<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <!-- page specific plugin scripts -->
    <script src="<?php echo e(asset('assets/js/chosen.jquery.min.js'), false); ?>"></script>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script type="text/javascript">
        $(document).ready(function () {
            document.getElementById('create_ledger_form').style.display = 'none';
            document.getElementById('search_ledger_form').style.display = 'none';
            /*$(function() {
                $('.upper').keyup(function() {
                    this.value = this.value.toUpperCase();
                });
            });*/
        });

        $('#create_ledger_btn').click(function () {
            document.getElementById('create_ledger_form').style.display = 'block';
            document.getElementById('search_ledger_form').style.display = 'none';
        });

        $('#search_ledger_btn').click(function () {
            document.getElementById('search_ledger_form').style.display = 'block';
            document.getElementById('create_ledger_form').style.display = 'none';
        });

        $('#filter-btn').click(function () {

            var url = '<?php echo e($data['url'], false); ?>';
            var flag = false;
            var tr_head = $('input[name="tr_head"]').val();
            var acc_id = $('select[name="acc_id"]').val();

            if (tr_head !== '') {
                url += '?tr_head=' + tr_head;
                flag = true;
            }

            if (acc_id !== '' && acc_id > 0) {

                if (flag) {

                    url += '&acc_id=' + acc_id;

                } else {

                    url += '?acc_id=' + acc_id;
                    flag = true;

                }
            }

            location.href = url;

        });


    </script>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/head/index.blade.php ENDPATH**/ ?>