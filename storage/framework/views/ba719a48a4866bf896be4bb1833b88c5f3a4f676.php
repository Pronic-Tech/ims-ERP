<?php $__env->startSection('css'); ?>
    <?php echo $__env->make('print.includes.print-layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <?php echo $__env->make('layouts.includes.template_setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="page-header hidden-print">
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
                    <div class="col-xs-12 hidden-print">
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <?php echo $__env->make('account.transaction.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <h4 class="header large lighter blue" id="filterBox"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Filter Transaction</h4>
                    </div>
                    <div class="col-sm-12 align-right hidden-print">
                        <a href="#" class="btn-primary btn-lg" onclick="window.print();">
                            <i class="ace-icon fa fa-print"></i> Print
                        </a>
                    </div>
                    <div class="space-32 hidden-print"></div>
                    <div class="col-xs-12">
                    <?php echo $__env->make('print.includes.institution-detail', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <!-- PAGE CONTENT BEGINS -->
                        <div class="row align-center">
                            <span class="receipt-copy">CHART OF ACCOUNTS </span>
                        </div>
                        <table width="100%" class="table-bordered">
                            <thead>
                            <tr>
                                <th>TYPE</th>
                                <th>GROUP</th>
                                <th>ACCOUNT</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if(isset($data['account-group']) && $data['account-group']->count() > 0): ?>
                                <?php ($i=1); ?>
                                <?php $__currentLoopData = $data['account-group']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td class="align-top">
                                            <?php echo e($key, false); ?>

                                        </td>
                                        <td COLSPAN="2">
                                            <table class="no-border">
                                                <?php $__currentLoopData = $type; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gkey => $group): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <tr>
                                                        <td class="align-top" width="5%"><?php echo e($group->id, false); ?></td>
                                                        <td class="align-top" width="40%"><?php echo e($group->ac_name, false); ?></td>
                                                        <td width="60%" class="no-border">
                                                            <?php if($group->ledgers->count() > 0): ?>
                                                                <table class="no-border">
                                                                    <?php $__currentLoopData = $group->ledgers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lkey => $ledger): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <tr>
                                                                            <td width="12%"><?php echo e($group->id, false); ?>_<?php echo e($ledger->id, false); ?></td>
                                                                            <td class="text-left"><?php echo e($ledger->tr_head, false); ?></td>
                                                                        </tr>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </table>
                                                            <?php endif; ?>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </table>
                                        </td>
                                    </tr>
                                    <?php ($i++); ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="4">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                                </tr>
                            <?php endif; ?>
                            </tbody>
                        </table>
                        <div class="space-8"></div>
                    </div>
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <script type="text/javascript">
        $('#filter-btn').click(function () {

            var url = '<?php echo e($data['url'], false); ?>';
            var flag = false;

            var tr_head = $('select[name="tr_head"]').val();
            var acc_id = $('select[name="acc_id"]').val();

            if (tr_head >0) {
                if (flag) {
                    url += '&tr_head=' + tr_head;
                } else {
                    url += '?tr_head=' + tr_head;
                    flag = true;
                }
            }

            if (acc_id >0) {
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/account/ledger/chart-of-account.blade.php ENDPATH**/ ?>