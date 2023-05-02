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
                                    <div class="widget-body">
                                        <div class="widget-main padding-24">
                                            <?php echo $__env->make('print.includes.institution-detail', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            <div class="row align-center">
                                                <span class="receipt-copy">DUE DETAIL - SLIP</span>
                                            </div>
                                            <hr class="hr hr-2">
                                            <?php echo $__env->make('print.student-fee.includes.studentinfo', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                            <div>
                                                <table width="100%" class="table-bordered">
                                                    <thead>
                                                        <tr class="text-center">
                                                            <th class="center"></th>
                                                            <th></th>
                                                            <th>Head</th>
                                                            <th class="center">Due Date</th>
                                                            <th class="center">Amount</th>
                                                            <th class="center">Di</th>
                                                            <th class="center">Fi</th>
                                                            <th class="center">Paid</th>
                                                            <th class="center">Due</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <?php ($i=1); ?>
                                                            <?php $__currentLoopData = $data['feemaster']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feeMaster): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <?php if(isset($feeMaster->due) && $feeMaster->due >0): ?>
                                                                <tr>
                                                                    <td class="center"><?php echo e($i, false); ?></td>
                                                                    <td>
                                                                        <?php echo e(ViewHelper::getSemesterById($feeMaster->semester), false); ?>

                                                                    </td>
                                                                    <td>
                                                                        <?php echo e(ViewHelper::getFeeHeadById($feeMaster->fee_head), false); ?>

                                                                    </td>
                                                                    <td>
                                                                        <?php echo e(\Carbon\Carbon::parse($feeMaster->fee_due_date)->format('Y-m-d'), false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php echo e($feeMaster->fee_amount?$feeMaster->fee_amount:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php echo e($feeMaster->discount?$feeMaster->discount:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php echo e($feeMaster->fine?$feeMaster->fine:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php echo e($feeMaster->paid_amount?$feeMaster->paid_amount:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php echo e($feeMaster->due?$feeMaster->due:'', false); ?>

                                                                    </td>
                                                                </tr>
                                                                <?php endif; ?>
                                                                <?php ($i++); ?>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            <tr style="font-weight: bold; background: orangered;color: white;">
                                                                <td colspan="4">Total</td>
                                                                <td class="text-right"><?php echo e($data['feemaster']->sum('fee_amount'), false); ?></td>
                                                                <td class="text-right"><?php echo e($data['feemaster']->sum('discount'), false); ?></td>
                                                                <td class="text-right"><?php echo e($data['feemaster']->sum('fine'), false); ?></td>
                                                                <td class="text-right"><?php echo e($data['feemaster']->sum('paid_amount'), false); ?></td>
                                                                <td class="text-right">
                                                                    <?php echo e($data['student']->balance?$data['student']->balance:'', false); ?>

                                                                </td>

                                                            </tr>
                                                        
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="hr hr-8"></div>
                                            <div class="row text-uppercase">
                                                <div class="col-sm-5 pull-right align-right">
                                                    Total Balance :<strong><?php echo e($data['student']->balance, false); ?>/-</strong>
                                                </div>
                                                <div class="col-sm-7 pull-left">
                                                    Balance In Word:<strong> <?php echo e(ViewHelper::convertNumberToWord($data['student']->balance), false); ?>only.</strong>
                                                </div>
                                            </div>
                                            <?php echo $__env->make('print.student-fee.includes.print-footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                        </div>
                                    </div>
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
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/due-detail-slip.blade.php ENDPATH**/ ?>