<h4 class="header large lighter blue"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?></h4>

<div class="form-group">
    <?php echo Form::label('name', 'Name', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('name', null, ["placeholder" => "", "class" => "form-control border-form",  "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'name'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('display_name', 'Display Name', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('display_name', null, ["placeholder" => "", "class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'display_name'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('description', 'Description', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('description', null, ["placeholder" => "","class" => "form-control border-form","rows"=>"1"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'description'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('permission', 'Permissions', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
            <table id="permission-table" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th width="20%">Group</th>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace" />
                            <span class="lbl"></span>
                        </label>
                    </th>
                    <th>Permissions</th>
                </tr>
                </thead>
                <tbody>
                <?php if($data['permission'] && $data['permission']->count() > 0): ?>
                <?php $__currentLoopData = $data['permission']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $permission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <?php if(isset($permission[0]->group_head) && $permission[0]->group_head == 1): ?>
                        <td colspan="3" style="background: #337ab7; color: white;"><strong><?php echo e($permission[0]->group, false); ?></strong></td>
                        <?php else: ?>
                            <td><strong><?php echo e($permission[0]->group, false); ?></strong></td>

                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="1" class="ace group" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td>
                                <?php $__currentLoopData = $permission; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $access): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <label>
                                        <?php if(!isset($data['role_permission'])): ?>
                                            <?php echo Form::checkbox('permission[]', $access->id, false, ['class' => 'ace']); ?>

                                        <?php else: ?>
                                            <?php echo Form::checkbox('permission[]', $access->id, array_key_exists($access->id, $data['role_permission']), ['class' => 'ace']); ?>

                                        <?php endif; ?>
                                        <span class="lbl"> <?php echo e($access->display_name, false); ?> </span>
                                    </label>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </td>
                        <?php endif; ?>

                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <tr><td colspan="7">No data found.</td></tr>
                <?php endif; ?>
                </tbody>
            </table>
        <div class="control-group">
        </div>
    </div>
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/role/includes/form.blade.php ENDPATH**/ ?>