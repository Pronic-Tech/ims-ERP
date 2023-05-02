<h4 class="header large lighter blue"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?></h4>

<div class="form-group">
    <?php echo Form::label('name', 'Name', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('name', null, ["placeholder" => "", "class" => "form-control border-form","autofocus", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'name'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('email', 'Email', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::email('email', null, ["placeholder" => "", "class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'email'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('password', 'Password', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::password('password',  ["placeholder" => "", "class" => "form-control border-form","autofocus","id"=>"pass", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'password'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('confirmPassword', 'Confirm Password', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::password('confirmPassword',  ["placeholder" => "", "class" => "form-control border-form"/*,"onkeyup"=>"passCheck()"*/,"id"=>"repatpass", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'confirmPassword'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="form-group">
    <?php echo Form::label('contact_number', 'ContactNumber', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('contact_number', null, ["placeholder" => "", "class" => "form-control border-form","autofocus", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'contact_number'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('address', 'Address', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('address', null, ["placeholder" => "", "class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'address'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<?php if(isset($data['roles']) && $data['roles']->count() > 0): ?>
    <div class="form-group">
        <?php echo Form::label('Access Level', 'User Access Level', ['class' => 'col-sm-2 control-label']); ?>

        <div class="col-sm-9">
            <div class="checkbox">
                <?php $__currentLoopData = $data['roles']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <label>
                        <?php if(!isset($data['row'])): ?>
                            <?php echo Form::radio('role[]', $role->id, false, ['class' => 'ace']); ?>

                        <?php else: ?>
                            <?php echo Form::radio('role[]', $role->id, array_key_exists($role->id, $data['active_roles']), ['class' => 'ace']); ?>

                        <?php endif; ?>
                        <span class="lbl"> <?php echo e($role->display_name, false); ?> </span>
                    </label>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <div class="control-group">
            </div>
        </div>
    </div>
<?php endif; ?>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('main_image', 'Profile Image', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::file('main_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'main_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>

<?php if(isset($data['row'])): ?>
    <div class="form-group">
        <label class="col-sm-2 control-label">Existing Image</label>
        <div class="col-sm-10">
            <?php if($data['row']->profile_image): ?>
                <img src="<?php echo e(asset('images/user/'.$data['row']->profile_image), false); ?>" width="200px" >
            <?php else: ?>
                <p>No image.</p>
            <?php endif; ?>

        </div>
    </div>
<?php endif; ?>
<div class="space-4"></div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/includes/form.blade.php ENDPATH**/ ?>