<div class="row">
    <div class="col-xs-12">
    <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>

            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <td class="text-center" colspan="10"><?php echo $data['bank']->appends($data['filter_query'])->links(); ?></td>
                    </tr>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>S.N.</th>
                        <th>Bank</th>
                        <th>Branch</th>
                        <th>AcNumber</th>
                        <th>AcName</th>
                        <th>Balance</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <?php if(isset($data['bank']) && $data['bank']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['bank']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $bank): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="<?php echo e($bank->id, false); ?>" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td><?php echo e($i, false); ?></td>
                            <td><a href="<?php echo e(route($base_route.'.view', ['id' => $bank->id]), false); ?>"><?php echo e($bank->bank_name, false); ?> </a></td>
                            <td><?php echo e($bank->branch, false); ?></td>
                            <td><a href="<?php echo e(route($base_route.'.view', ['id' => $bank->id]), false); ?>"><?php echo e($bank->ac_number, false); ?> </a></td>
                            <td><a href="<?php echo e(route($base_route.'.view', ['id' => $bank->id]), false); ?>"><?php echo e($bank->ac_name, false); ?> </a></td>
                            <td><?php echo e($bank->bankTransaction()->sum('dr_amt') - $bank->bankTransaction()->sum('cr_amt'), false); ?></td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($bank->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                        <?php echo e($bank->status == 'active'?"Active":"In Active", false); ?>

                                        <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php echo e(route($base_route.'.active', ['id' => $bank->id]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i></a>
                                        </li>

                                        <li>
                                            <a href="<?php echo e(route($base_route.'.in-active', ['id' => $bank->id]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </td>

                            <td>
                                <div class="action-buttons">
                                    <a href="<?php echo e(route($base_route.'.view', ['id' => $bank->id]), false); ?>" class="btn btn-primary btn-minier">
                                        <i class="ace-icon fa fa-eye bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.edit', ['id' => $bank->id]), false); ?>" class="btn btn-success btn-minier">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.delete', ['id' => $bank->id]), false); ?>" class="btn btn-danger btn-minier bootbox-confirm" >
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


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/bank/includes/table.blade.php ENDPATH**/ ?>