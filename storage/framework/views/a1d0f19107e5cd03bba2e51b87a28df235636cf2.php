<?php $__env->startSection('css'); ?>
    <style>
        body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            background-color: #FAFAFA;
            /*font: 12pt "Tahoma";*/
        }
        * {
            box-sizing: border-box;
            -moz-box-sizing: border-box;
        }
        .page {
            width: 210mm;
            height: 296mm;
            margin: 10mm auto;
            border: 1px #D3D3D3 solid;
            border-radius: 5px;
            background: white;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .page-content{
            background-color: transparent !important;
        }
        .subpage {
            width: 200mm;
            height: 286mm;
            margin: 10px auto;
            padding: 10px;
            /*height: 257mm;*/
        }

        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            padding: 4px !important;
        }

        @page  {
            size: A4;
            margin: 0;
        }
        @media  print {
            html, body {
                width: 210mm;
                height: 297mm;
            }
            .page {
                margin: 0;
                border: initial;
                border-radius: initial;
                width: initial;
                min-height: initial;
                box-shadow: initial;
                background: initial;
                /*page-break-after: always;*/
            }
        }

    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php if($data['student'] && $data['student']->count() > 0 ): ?>
        <?php $__currentLoopData = $data['student']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="main-content" style="page-break-after:always;">
                <div class="main-content-inner">
                    <div class="page-content">
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="space-6"></div>
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1">
                                        <div class="widget-box transparent">

                                        </div>
                                </div>
                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
            </div>

            <div class="book">
                <div class="page">
                    <div class="subpage">
                        <div class="main-content">
                            <div class="main-content-inner">
                                <div class="page-content">
                                    <div class="row">
                                        <div class="col-xs-12 align-center">
                                            <!-- PAGE CONTENT BEGINS -->
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-print-12 align-center text-center">
                                                    <div class="widget-box transparent">
                                                        <?php echo $__env->make('print.student-fee.includes.print-header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                        <?php echo $__env->make('print.student-fee.includes.institution-detail', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                        <div class="row align-center">
                                                            <span class="receipt-copy"> DUE DETAIL SLIP </span>
                                                        </div>
                                                        <hr class="hr hr-2">
                                                        <?php echo $__env->make('print.student-fee.includes.studentinfo-due', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                        <div>
                                                            <table class="table table-striped table-bordered no-margin-bottom">
                                                                <tr class="text-center">
                                                                    <th class="center"></th>
                                                                    <th></th>
                                                                    <th>Head</th>
                                                                    <th>Due Date</th>
                                                                    <th>Amount</th>
                                                                    <th>Di</th>
                                                                    <th>Fi</th>
                                                                    <th>Paid</th>
                                                                    <th>Due</th>
                                                                </tr>

                                                                <?php ($i=1); ?>
                                                                <?php $__currentLoopData = $student->master; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feeMaster): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
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
                                                                                <?php echo e($feeMaster->fee_amount?$feeMaster->fee_amount:'-', false); ?>

                                                                            </td>
                                                                            <td class="text-right">
                                                                                <?php echo e($feeMaster->discount?$feeMaster->discount:'-', false); ?>

                                                                            </td>
                                                                            <td class="text-right">
                                                                                <?php echo e($feeMaster->fine?$feeMaster->fine:'-', false); ?>

                                                                            </td>
                                                                            <td class="text-right">
                                                                                <?php echo e($feeMaster->paid_amount?$feeMaster->paid_amount:'-', false); ?>

                                                                            </td>
                                                                            <td class="text-right">
                                                                                <?php echo e($feeMaster->due?$feeMaster->due:'-', false); ?>

                                                                            </td>
                                                                        </tr>
                                                                        <?php ($i++); ?>
                                                                    <?php endif; ?>
                                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            </table>
                                                        </div>

                                                        <div class="hr hr8 hr-dotted"></div>


                                                        <div class="row text-uppercase">
                                                            <div class="col-sm-5 pull-right align-right">
                                                                Total Balance :<strong><?php echo e($student->balance, false); ?>/-</strong>
                                                            </div>
                                                            <div class="col-sm-7 pull-left">
                                                                Balance In Word:<strong> <?php echo e(ViewHelper::convertNumberToWord($student->balance), false); ?>only.</strong>
                                                            </div>
                                                        </div>
                                                        <div class="hr hr8 hr-dotted"></div>


                                                        <div class="space-6"></div>
                                                        <?php echo $__env->make('print.student-fee.includes.print-footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                    </div>
                                                </div><!-- /.col -->
                                            </div><!-- /.row -->
                                        </div><!-- /.page-content -->
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.main-content -->
                    </div>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <!-- inline scripts related to this page -->
   <?php echo $__env->make('includes.scripts.print_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/bulk-due-detail-slip.blade.php ENDPATH**/ ?>