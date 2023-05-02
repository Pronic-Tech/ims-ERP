<div class="row">
    <div class="col-xs-12">
        <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>


            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <td class="text-center" colspan="7"><?php echo $data['tr_head']->appends($data['filter_query'])->links(); ?></td>
                    </tr>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>S.N.</th>
                        <th><?php echo e($panel, false); ?></th>
                        <th>Group</th>
                        <th>Balance</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <?php if(isset($data['tr_head']) && $data['tr_head']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['tr_head']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $trHead): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="<?php echo e($trHead->id, false); ?>" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td><?php echo e($i, false); ?></td>
                            <td><a href="<?php echo e(route('account.transaction-head.view', ['tr_head' => $trHead->id]), false); ?>"> <?php echo e($trHead->tr_head, false); ?></a></td>
                            <td>
                                <a href="<?php echo e(route('account.transaction-head'), false); ?>?acc_id=<?php echo e($trHead->acc_id, false); ?>">
                                    <?php echo e(ViewHelper::getAcGroupById($trHead->acc_id), false); ?>

                                </a>
                            </td>
                            <td>
                                <?php echo e($trHead->tR->sum('dr_amount') - $trHead->tR->sum('cr_amount'), false); ?>

                            </td>
                            <td class="hidden-480">
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($trHead->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                        <?php echo e($trHead->status == 'active'?"Active":"In Active", false); ?>

                                        <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php echo e(route($base_route.'.active', ['id' => $trHead->id]), false); ?>"><i class="fa fa-check" aria-hidden="true"></i></a>
                                        </li>

                                        <li>
                                            <a href="<?php echo e(route($base_route.'.in-active', ['id' => $trHead->id]), false); ?>"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>

                            </td>
                            <td>
                                <div class="action-buttons">
                                    <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => $trHead->id]), false); ?>">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.delete', ['id' => $trHead->id]), false); ?>" class="red bootbox-confirm">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <?php ($i++); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
            <?php echo Form::close(); ?>

        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/head/includes/table.blade.php ENDPATH**/ ?>