<div class="form-group">
    <?php echo Form::label('fee_head_title', 'Head', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('fee_head_title', null, ["placeholder" => "e.g. Monthly Fee", "class" => "form-control border-form upper","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'fee_head_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('fee_head_amount', 'Amount', ['class' => 'col-sm-4 control-label']); ?>

    <div class="col-sm-8">
        <?php echo Form::text('fee_head_amount', null, ["placeholder" => "e.g. 5000", "class" => "form-control border-form upper"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'fee_head_amount'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="hr hr-24"></div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/head/includes/form.blade.php ENDPATH**/ ?>