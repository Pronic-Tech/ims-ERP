<div class="form-group row">
    <label for="date" class="col-sm-3 control-label">Date <i class="text-danger">*</i></label>
    <div class="col-sm-6">
        <?php echo Form::text('date', null, ["class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd","id"=>"tr_date","required"]); ?>

    </div>
</div>

<div class="form-group row">
    <label for="tr_head" class="col-sm-3 control-label">Source Ledger <i class="text-danger">*</i></label>
    <div class="col-sm-6">
        <select name="tr_head_source" class="chosen-select form-control" id="form-field-select-3" data-placeholder="Choose a Ledger..." required>
            <option value="">  </option>
            <?php $__currentLoopData = $data['th']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $th): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option value="<?php echo e($key, false); ?>"><?php echo e($th, false); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
</div>

<div class="form-group row">
    <label for="tr_head" class="col-sm-3 control-label">Target Ledger <i class="text-danger">*</i></label>
    <div class="col-sm-6">
        <select name="tr_head_target" class="chosen-select form-control" id="form-field-select-3" data-placeholder="Choose a Ledger..." required>
            <option value="">  </option>
            <?php $__currentLoopData = $data['th']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $th): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option value="<?php echo e($key, false); ?>"><?php echo e($th, false); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
</div>

<div class="form-group row">
    <label for="amount" class="col-sm-3 control-label">Amount <i class="text-danger">*</i></label>
    <div class="col-sm-6">
        <input type="number" class="form-control" step="any" name="amount" id="amount" placeholder="Amount"  autocomplete="off" required>
    </div>
</div>

<div class="form-group row">
    <label for="description" class="col-sm-3 control-label">Description <i class="text-danger">*</i></label>
    <div class="col-sm-6">
        <textarea class="form-control" placeholder="Description" name="description" autocomplete="off" required></textarea>
    </div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/transfer/includes/form.blade.php ENDPATH**/ ?>