
        <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>


                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>S.N.</th>
                            <th><?php echo e($panel, false); ?></th>
                            <th>Type</th>
                            <th>Debit</th>
                            <th>Credit</th>
                            <th>Status</th>
                            <th width="6%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($data['account-group']) && $data['account-group']->count() > 0): ?>
                            <?php ($i=1); ?>
                            <?php $__currentLoopData = $data['account-group']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $group): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td class="center first-child">
                                        <label>
                                            <input type="checkbox" name="chkIds[]" value="<?php echo e($group->id, false); ?>" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td><?php echo e($i, false); ?></td>
                                    <td class="text-uppercase"><?php echo e($group->ac_name, false); ?> - [<?php echo e($group->id, false); ?>]</td>
                                    <td class="text-uppercase"><?php echo e($group->ac_type, false); ?></td>
                                    <td class="text-uppercase"><?php echo e($group->dr, false); ?></td>
                                    <td class="text-uppercase"><?php echo e($group->cr, false); ?></td>
                                    <td>
                                        <div class="btn-group">
                                            <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($group->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                                <?php echo e($group->status == 'active'?"Active":"In Active", false); ?>

                                                <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                            </button>

                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="<?php echo e(route($base_route.'.active', ['id' => $group->id]), false); ?>"><i class="fa fa-check" aria-hidden="true"></i></a>
                                                </li>

                                                <li>
                                                    <a href="<?php echo e(route($base_route.'.in-active', ['id' => $group->id]), false); ?>"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                                </li>
                                            </ul>
                                        </div>

                                    </td>
                                    <td>
                                        <div class="action-buttons">
                                            <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => $group->id]), false); ?>">
                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                            </a>

                                            <a href="<?php echo e(route($base_route.'.delete', ['id' => $group->id]), false); ?>" class="red bootbox-confirm">
                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <?php ($i++); ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <tr>
                                <td colspan="8">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                            </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            <?php echo Form::close(); ?>

        </div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/account-group/includes/table.blade.php ENDPATH**/ ?>