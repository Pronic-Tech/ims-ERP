<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue text-uppercase">
            <i class="fa fa-list" aria-hidden="true"></i>&nbsp;
            Total Due: <?php echo e(number_format($data['student']->balance, 2), false); ?> [<?php echo e(ViewHelper::convertNumberToWord($data['student']->balance ), false); ?> ONLY]
        </h4>
      
        <!-- div.table-responsive -->
        <?php echo Form::open(['route' => 'account.fees.due.store', 'method' => 'POST', 'class' => 'form-horizontal',
                       'id' => 'bulk_action_form', "enctype" => "multipart/form-data"]); ?>

            <input type="hidden" name="students_id" value="<?php echo e($data['student']->id, false); ?>" class="ace" />

            <div class="table-responsive">
                <table  class="table table-striped table-bordered table-hover">
                    <thead class="header">
                        <tr role="row">
                            <th class="sorting_disabled">Sem./Sec.</th>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th class="sorting_disabled">FeeHead</th>
                            <th class="sorting_disabled">DueDate</th>
                            <th class="sorting_disabled">Amount </th>
                            <th class="sorting_disabled">Di </th>
                            <th class="sorting_disabled">Fi </th>
                            <th class="sorting_disabled">Paid </th>
                            <th class="sorting_disabled">Balance</th>
                            <th class="sorting_disabled">Remark</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($data['fee_master']) && $data['fee_master']->count() > 0): ?>
                            <?php $__currentLoopData = $data['fee_master']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feemaster): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php ($net_balance = (($feemaster->fee_amount + $feemaster->feeCollect()->sum('fine')) - (($feemaster->feeCollect()->sum('paid_amount') + $feemaster->feeCollect()->sum('discount'))))); ?>
                                <tr class="danger font12 odd" role="row" style="font-weight: 600;">
                                    <td><?php echo e(ViewHelper::getSemesterById($feemaster->semester), false); ?></td>
                                    <td class="center first-child">
                                        <label>
                                            <input type="checkbox" name="balance[]" value="<?php echo e($net_balance, false); ?>" class="ace group balance" />
                                            <span class="lbl"></span>
                                        </label>
                                        <label>
                                            <input type="checkbox" name="chkIds[]" value="<?php echo e($feemaster->id, false); ?>" class="ace label-large group" onclick="this.checked=!this.checked;"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td><?php echo e(ViewHelper::getFeeHeadById($feemaster->fee_head), false); ?></td>
                                    <td><?php echo e(\Carbon\Carbon::parse($feemaster->fee_due_date)->format('Y-m-d'), false); ?></td>
                                    <td><?php echo e($feemaster->fee_amount, false); ?></td>
                                    <td><?php echo e($feemaster->feeCollect()->sum('discount')?$feemaster->feeCollect()->sum('discount'):"-", false); ?></td>
                                    <td><?php echo e($feemaster->feeCollect()->sum('fine')?$feemaster->feeCollect()->sum('fine'):'-', false); ?></td>
                                    <td><?php echo e($feemaster->feeCollect()->sum('paid_amount')?$feemaster->feeCollect()->sum('paid_amount'):'-', false); ?></td>
                                    <td>
                                        <?php echo e($net_balance?$net_balance:'-', false); ?>

                                    </td>
                                    <td>
                                        <?php if($net_balance == 0): ?>
                                            <span class="label label-success">Paid</span>
                                        <?php elseif($net_balance < 0 ): ?>
                                            <span class="label label-warning">Negative</span>
                                        <?php elseif($net_balance < $feemaster->fee_amount): ?>
                                            <span class="label label-warning">Partial</span>
                                        <?php else: ?>
                                            <span class="label label-danger">Due</span>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </tbody>
                    <tfoot>
                    <tr style="font-size: 14px; background: orangered;color: white;">
                        <td colspan="4">Total</td>
                        <td><?php echo e($feeAmount = $data['fee_master']->sum('fee_amount'), false); ?></td>
                        <td><?php echo e($data['fee_master']->sum('discount'), false); ?></td>
                        <td><?php echo e($data['fee_master']->sum('fine'), false); ?></td>
                        <td><?php echo e($data['fee_master']->sum('paid_amount'), false); ?></td>
                        <td>
                            <?php echo e($balance = $data['fee_master']->sum('balance'), false); ?>

                            <input type="hidden" name="total_balance" value="<?php echo e($balance, false); ?>" id="total_balance" class="ace" />
                        </td>
                        <td>
                            <?php if($balance == 0): ?>
                                <span class="label label-success">Paid</span>
                            <?php elseif($balance < 0 ): ?>
                                <span class="label label-warning">Negative</span>
                            <?php elseif($balance < $feeAmount): ?>
                                <span class="label label-warning">Partial</span>
                            <?php else: ?>
                                <span class="label label-danger">Due</span>
                            <?php endif; ?>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>

            <?php echo $__env->make($view_path.'.due.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php echo form::close(); ?>

    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/collection/due/includes/table.blade.php ENDPATH**/ ?>