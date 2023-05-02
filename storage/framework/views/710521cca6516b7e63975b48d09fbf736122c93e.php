<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?> List</h4>
        <div class="clearfix">
            <span class="pull-right tableTools-container"></span>
        </div>
        <div class="table-header">
            <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
        </div>
    <!-- div.table-responsive -->
        <div class="table-responsive">
            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th>S.N.</th>
                        <th>Name</th>
                        <th>Display Name</th>
                        <th>Description</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['roles']) && $data['roles']->count() > 0): ?>
                        <?php ($i = 1); ?>
                        <?php $__currentLoopData = $data['roles']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($i, false); ?></td>
                                <td> <?php echo e($role->name, false); ?> </td>
                                <td><?php echo e($role->display_name, false); ?></td>
                                <td><?php echo e($role->description, false); ?></td>
                                <td>
                                    <div class="action-buttons">
                                        <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => $role->id]), false); ?>">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>
                                        <?php if (\Entrust::hasRole('super-admin')) : ?>
                                        <a href="<?php echo e(route($base_route.'.delete', ['id' => $role->id]), false); ?>" class="red bootbox-confirm">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                        <?php endif; // Entrust::hasRole ?>
                                    </div>
                                </td>
                            </tr>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr><td colspan="7">No data found.</td></tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/role/includes/table.blade.php ENDPATH**/ ?>