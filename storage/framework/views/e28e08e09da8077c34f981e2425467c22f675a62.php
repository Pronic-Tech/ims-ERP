<div class="row">
    <div class="col-xs-12">
    <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>

            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <td class="text-center" colspan="7"><?php echo $data['rows']->appends($data['filter_query'])->links(); ?></td>
                    </tr>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>S.N.</th>
                        <th>User Detail</th>
                        <th>Image</th>
                        <th>User Type</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['rows']) && $data['rows']->count() > 0): ?>
                        <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>

                        <?php ($i = 1); ?>
                        <?php $__currentLoopData = $data['rows']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="center">
                                    <label>
                                        <input type="checkbox" name="chkIds[]" value="<?php echo e(encrypt($row->id), false); ?>" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo e($i, false); ?></td>

                                <td>
                                    <b><?php echo e($row->name, false); ?></b>
                                    <hr class="hr-2">
                                    <?php echo e($row->contact_number, false); ?>

                                    <hr class="hr-2">
                                    <?php echo e($row->email, false); ?>

                                    <hr class="hr-2">
                                    <?php echo e($row->address, false); ?>

                                </td>
                                <td>
                                    <?php if($row->profile_image): ?>
                                        <img src="<?php echo e(asset('images/user/'.$row->profile_image), false); ?>" width="80px">
                                    <?php else: ?>
                                        <p>No image</p>
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <?php ($roles = $row->userRole); ?>
                                    <?php if(isset($roles) && $roles->count() > 0): ?>
                                        <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="label label-info arrowed-right arrowed-in">
                                                <?php echo e($role->display_name, false); ?>

                                            </div>
                                            <hr class="hr-2">
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($row->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                            <?php echo e($row->status == 'active'?"Active":"In Active", false); ?>

                                            <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                        </button>

                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="<?php echo e(route($base_route.'.active', ['id' => encrypt($row->id)]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            </li>

                                            <li>
                                                <a href="<?php echo e(route($base_route.'.in-active', ['id' => encrypt($row->id)]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                            </li>
                                        </ul>
                                    </div>

                                </td>
                                <td>
                                    <div class="action-buttons">
                                        <a class="green" href="<?php echo e(route($base_route.'.view', ['id' => encrypt($row->id)]), false); ?>">
                                            <i class="ace-icon fa fa-eye bigger-130"></i>
                                        </a>

                                        <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => encrypt($row->id)]), false); ?>">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a href="<?php echo e(route($base_route.'.delete', ['id' => encrypt($row->id)]), false); ?>" class="red bootbox-confirm">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php echo Form::close(); ?>


                    <?php else: ?>
                        <tr><td colspan="7">No data found.</td></tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/includes/table.blade.php ENDPATH**/ ?>