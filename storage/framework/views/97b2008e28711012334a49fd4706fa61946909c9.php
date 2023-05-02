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
                                    <div class="widget-body">
                                        <div class="widget-main padding-24">
                                            <?php echo $__env->make('print.student-fee.includes.institution-detail', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            <div class="row align-center">
                                                <span class="receipt-copy text-uppercase">Statement of Student Fee Ledger</span>
                                            </div>
                                            <hr class="hr hr-2">
                                            <?php echo $__env->make('print.student-fee.includes.studentinfo', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            <div>
                                                <table class="table table-striped table-bordered no-margin-bottom">
                                                    <thead>
                                                        <tr>
                                                            <th class="center"></th>
                                                            <th></th>
                                                            <th class="center">Head</th>
                                                            <th class="center">Due On</th>
                                                            <th class="center">Amount</th>
                                                            <th class="center">Date</th>
                                                            <th class="center">Di</th>
                                                            <th class="center">Fi</th>
                                                            <th class="center">Paid</th>
                                                            <th class="center">Balance</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                    
                                                        <?php if($data['student']->feeMaster && $data['student']->feeMaster->count() > 0): ?>
                                                            <?php ($i=1); ?>
                                                            <?php $__currentLoopData = $data['student']->feeMaster; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feeMaster): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <tr >
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
                                                                        <?php echo e($amount = $feeMaster->fee_amount?$feeMaster->fee_amount:'', false); ?>

                                                                    </td>
                                                                    <td></td>
                                                                    <td class="text-right">
                                                                        <?php ($fmDiscount = $feeMaster->feeCollect()->sum('discount')); ?>
                                                                        <?php echo e(($fmDiscount >0)?$fmDiscount:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php ($fmFine = $feeMaster->feeCollect()->sum('fine')); ?>
                                                                        <?php echo e(($fmFine >0)?$fmFine:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php ($paid = $feeMaster->feeCollect->sum('paid_amount')); ?>
                                                                        <?php echo e($paid?$paid:'', false); ?>

                                                                    </td>
                                                                    <td class="text-right">
                                                                        <?php ($balance = ($feeMaster->fee_amount + $fmFine) - ($paid + $fmDiscount)); ?>
                                                                        <?php echo e($balance?$balance:'PAID', false); ?>

                                                                    </td>
                                                                </tr>
                                                                <?php if($feeMaster->feeCollect ): ?>
                                                                    <?php $__currentLoopData = $feeMaster->feeCollect; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feeCollection): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <tr>
                                                                            <td colspan="5"></td>
                                                                            <td class="center"> <?php echo e(\Carbon\Carbon::parse($feeCollection->date)->format('Y-m-d'), false); ?></td>
                                                                            <td class="text-right"> <?php echo e($feeCollection->discount?$feeCollection->discount:'', false); ?></td>
                                                                            <td class="text-right"> <?php echo e($feeCollection->fine?$feeCollection->fine:"", false); ?></td>
                                                                            <td class="text-right"> <?php echo e($feeCollection->paid_amount?$feeCollection->paid_amount:'', false); ?></td>
                                                                            <td> </td>
                                                                        </tr>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                <?php endif; ?>
                                                                <?php ($i++); ?>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            <tr style="font-weight: bold; background: orangered;color: white;">
                                                                <td colspan="4" class="text-right">Total</td>
                                                                <td class="text-right"><?php echo e($data['student']->fee_amount?$data['student']->fee_amount:'', false); ?></td>
                                                                <td></td>
                                                                <td><?php echo e($data['student']->discount?$data['student']->discount:'', false); ?></td>
                                                                <td><?php echo e($data['student']->fine?$data['student']->fine:'', false); ?></td>
                                                                <td><?php echo e($data['student']->paid_amount?$data['student']->paid_amount:'', false); ?></td>
                                                                <td>
                                                                    <?php echo e($data['student']->balance?$data['student']->balance:'', false); ?>

                                                                </td>

                                                            </tr>
                                                        <?php else: ?>
                                                            <tr colspan="8"></tr>
                                                        <?php endif; ?>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="hr hr8 hr-dotted"></div>

                                            <div class="row text-uppercase">
                                                <div class="col-sm-5 pull-right align-right">
                                                    Total :<strong><?php echo e($data['student']->paid_amount, false); ?>/-</strong>
                                                </div>
                                                <div class="col-sm-7 pull-left">
                                                   In Word:<strong> <?php echo e(ViewHelper::convertNumberToWord($data['student']->paid_amount), false); ?>only.</strong>
                                                </div>
                                            </div>
                                            <div class="hr hr8 hr-double"></div>
                                            <?php if($data['student']->balance > 0): ?>
                                            <div class="row text-uppercase">
                                                <div class="col-sm-5 pull-right align-right">
                                                   Total Balance :<strong><?php echo e($data['student']->balance, false); ?>/-</strong>
                                                </div>
                                                <div class="col-sm-7 pull-left">
                                                    Balance In Word:<strong> <?php echo e(ViewHelper::convertNumberToWord($data['student']->balance ), false); ?>only.</strong>
                                                </div>
                                            </div>
                                            <div class="hr hr-4 hr-dotted"></div>
                                            <?php endif; ?>
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
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/student-ledger.blade.php ENDPATH**/ ?>