<h4 class="header large lighter blue"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Email Configuration</h4>
<div class="form-group">
    <?php echo Form::label('driver', 'Driver', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('driver', null, ['placeholder'=>'e.g.SMTP', "class" => "form-control border-form", "required", "autofocus"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'driver'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('host', 'Host', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('host', null, ['placeholder'=>'e.g.mail.google.com', "class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'host'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('port', 'Port', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('port', null, ['placeholder'=>'e.g.465', "class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'port'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('encryption', 'Encryption', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('encryption', null, ['placeholder'=>'e.g.TLS', "class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'encryption'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('user_name', 'User Name', ['placeholder'=>'e.g.SMTP','class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('user_name', null, ["class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'user_name'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('password', 'Password', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-4">
        <?php echo Form::text('password', null,["class" => "form-control border-form", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'password'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<?php if( $data['row']): ?>
    <?php if($data['row']->status == 'active'): ?>
        <?php ( $checkStatus = 'checked="checked"'); ?>
    <?php else: ?>
        <?php ($checkStatus = ''); ?>
    <?php endif; ?>
    <div class="form-group">
        <label class="pull-left inline">
            <small class="muted smaller-90">Active:</small>

            <input id="status-button"  type="checkbox" <?php echo e($checkStatus, false); ?> onchange="onToggle()" class="ace ace-switch ace-switch-5">
            <span class="lbl middle"></span>
        </label>
    </div>
<?php endif; ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/email/includes/form.blade.php ENDPATH**/ ?>