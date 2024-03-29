<div class="form-group">
    <?php echo Form::label('ac_name', 'AccName', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('ac_name', null, ["placeholder" => "", "class" => "form-control border-form upper","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'ac_name'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="form-group">
    <?php echo Form::label('ac_type', 'AccType', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('ac_type', null, ["placeholder" => "", "class" => "form-control border-form upper","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'ac_type'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label">Debit</label>
    <div class="col-sm-10">
        <select class="form-control border-form" name="dr">
            <option value=""> Select +/- </option>
            <option value="Increase" >Increase</option>
            <option value="Decrease" >Decrease</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Credit</label>
    <div class="col-sm-10">
        <select class="form-control border-form" name="cr">
            <option value=""> Select +/- </option>
            <option value="Increase" >Increase</option>
            <option value="Decrease" >Decrease</option>
        </select>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/account-group/includes/form.blade.php ENDPATH**/ ?>