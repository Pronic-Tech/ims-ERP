<?php $__env->startSection('css'); ?>
    <?php echo $__env->make('print.student-fee.includes.receipt-css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <?php echo $__env->make('layouts.includes.template_setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="space-6"></div>
                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="widget-box transparent">
                                    <?php echo $__env->make('print.student-fee.includes.print-header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php echo $__env->make('print.student-fee.includes.institution-detail', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <div class="row align-center">
                                        <span class="receipt-copy"> DETAIL-RECEIPT </span>
                                    </div>
                                    <?php echo $__env->make('print.student-fee.includes.studentinfo', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <div>
                                        <table class="table table-striped table-bordered no-margin-bottom">
                                            <thead>
                                            <tr class="text-center">
                                                <th class="center"></th>
                                                <th></th>
                                                <th class="center">Head</th>
                                                <th class="center">Due Date</th>
                                                <th class="center">Amount</th>
                                                <th class="center">Date</th>
                                                <th class="center">Paid</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php if($data['fee_collection'] && $data['fee_collection']->count() > 0): ?>
                                                <?php ($i=1); ?>
                                                <?php $__currentLoopData = $data['fee_collection']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feeCollection): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <tr>
                                                        <td class="center"><?php echo e($i, false); ?></td>
                                                        <td>
                                                            <?php echo e(ViewHelper::getSemesterById($feeCollection->feeMasters->semester), false); ?>

                                                        </td>
                                                        <td>
                                                            <?php echo e(ViewHelper::getFeeHeadById($feeCollection->feeMasters->fee_head), false); ?>

                                                        </td>
                                                        <td class="center">
                                                            <?php echo e(\Carbon\Carbon::parse($feeCollection->feeMasters->fee_due_date)->format('Y-m-d'), false); ?>

                                                        </td>
                                                        <td class="text-right">
                                                            <?php echo e($feeCollection->feeMasters->fee_amount, false); ?>

                                                        </td>

                                                        <td class="center"> <?php echo e(\Carbon\Carbon::parse($feeCollection->date)->format('Y-m-d'), false); ?></td>

                                                        <td class="text-right">
                                                            <?php echo e($feeCollection->paid_amount, false); ?>

                                                        </td>
                                                    </tr>
                                                    <?php ($i++); ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                <?php ($paid = $data['fee_collection']->sum('paid_amount')); ?>
                                            <?php endif; ?>
                                            <tr colspan="8"></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="hr hr8 hr-dotted"></div>
                                    <div class="row text-uppercase">
                                        <div class="col-sm-5 pull-right align-right">
                                            <strong>Total :</strong><?php echo e(isset($paid)?$paid:0, false); ?>/-
                                        </div>
                                        <div class="col-sm-7 pull-left">
                                            <strong> In Word:</strong> <?php echo e(ViewHelper::convertNumberToWord(isset($paid)?$paid:0), false); ?>only.
                                        </div>
                                    </div>
                                    <hr class="hr">
                                    <?php if($data['total_due'] > 0): ?>
                                    <div class="row text-uppercase">
                                        <div class="col-sm-5 pull-right align-right">
                                            <strong>Total Balance :</strong><?php echo e($data['total_due'], false); ?>/-
                                        </div>
                                        <div class="col-sm-7 pull-left">
                                            <strong>Balance In Word:</strong> <?php echo e(ViewHelper::convertNumberToWord($data['total_due']), false); ?>only.
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <div class="hr hr-4 hr-dotted"></div>
                                    <?php echo $__env->make('print.student-fee.includes.print-footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                </div>
                            </div>
                        </div>
                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <!-- inline scripts related to this page -->
    <?php echo $__env->make('includes.scripts.print_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/today-receipt-detail.blade.php ENDPATH**/ ?>