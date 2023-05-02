<div class="row">
    <div class="col-xs-12">
    <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- div.table-responsive -->
        <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>

        <div class="table-responsive">
            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <td class="text-center" colspan="10"><?php echo $data['transaction']->appends($data['filter_query'])->links(); ?></td>
                        </tr>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>S.N.</th>
                            <th>Date</th>
                            <th>Ledger/Head</th>
                            <th>Dr Amount</th>
                            <th>Cr Amount</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php if(isset($data['transaction']) && $data['transaction']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['transaction']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="center first-child">
                                    <label>
                                        <input type="checkbox" name="chkIds[]" value="<?php echo e($transaction->id, false); ?>" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo e($i, false); ?></td>
                                <td><?php echo e(\Carbon\Carbon::parse($transaction->date)->format('Y-m-d'), false); ?>

                                </td>
                                <td> <a href="<?php echo e(route('account.transaction-head.view', ['tr_head' => $transaction->tr_head_id]), false); ?>"> <?php echo e(ViewHelper::getTransactionHeadById($transaction->tr_head_id), false); ?></a></td>
                                <td> <?php echo e($transaction->dr_amount, false); ?></td>
                                <td> <?php echo e($transaction->cr_amount, false); ?></td>
                                <td> <?php echo e($transaction->description, false); ?></td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="<?php echo e(route($base_route.'.delete', ['id' => $transaction->id]), false); ?>" class="red bootbox-confirm">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        

                    <?php else: ?>
                        <tr>
                            <td colspan="10">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                        </tr>
                    <?php endif; ?>
                    </tbody>
                </table>
        </div>
        <?php echo Form::close(); ?>

    </div>
</div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/includes/table.blade.php ENDPATH**/ ?>