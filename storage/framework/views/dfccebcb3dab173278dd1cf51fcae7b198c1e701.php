<?php $__env->startSection('css'); ?>
    <?php echo $__env->make('print.student-fee.includes.receipt-css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="widget-box transparent">
                                    <div class="col-sm-12 align-right hidden-print">
                                        <a href="#" class="btn-primary btn-lg" onclick="window.print();">
                                            <i class="ace-icon fa fa-print"></i> Print
                                        </a>
                                    </div>
                                    <?php echo $__env->make('print.includes.institution-detail', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <div class="row">
                                        <table>
                                            <tr>
                                                
                                                <td>
                                                    <div class="row align-center">
                                                        <span class="receipt-copy"> RECEIPT</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <?php echo $__env->make('print.student-fee.includes.studentinfo', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="table table-striped table-bordered no-margin-bottom">
                                                        <thead>
                                                        <tr class="text-center">
                                                            <th class="center">Description</th>
                                                            <th class="center">Amount</th>
                                                        </tr>
                                                        </thead>

                                                        <tbody>
                                                        <?php if(isset($data['student']->paid_amount) && $data['student']->paid_amount >0): ?>
                                                            <tr>
                                                                <td>
                                                                    Amount Received On <?php echo e(\Carbon\Carbon::parse(now())->format('Y-m-d'), false); ?>

                                                                </td>

                                                                <td class="text-right">
                                                                    <?php echo e(number_format($data['student']->paid_amount, 2), false); ?>/-
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-uppercase" colspan="2">
                                                                    Amount In Word:<strong> <?php echo e(ViewHelper::convertNumberToWord(isset($data['student']->paid_amount)?$data['student']->paid_amount:0), false); ?>only.</strong>
                                                                </td>
                                                            </tr>
                                                        <?php endif; ?>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <?php echo $__env->make('print.student-fee.includes.print-footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="space-10"></div>
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
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/today-receipt.blade.php ENDPATH**/ ?>