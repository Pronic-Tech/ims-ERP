<div class="form-group">
    <?php echo Form::label('tr_head', 'Ledger', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-5">
        <?php echo Form::text('tr_head', null, ["placeholder" => "e.g. Room Rent", "class" => "form-control border-form upper"]); ?>

    </div>

    <?php echo Form::label('acc_id', 'Group', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-5">
        <?php if(isset($data['row'])): ?>
            <select name="acc_id" class="chosen-select form-control" id="form-field-select-3" data-placeholder="Choose a Group..." >
                <option value="">  </option>
                <?php $__currentLoopData = $data['ac']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $aCat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($key, false); ?>" <?php echo e(($key == $data['row']->acc_id)?"selected":'', false); ?>><?php echo e($aCat, false); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
        <?php else: ?>
            <select name="acc_id" class="chosen-select form-control" id="form-field-select-3" data-placeholder="Choose a Group..." >
                <option value="">  </option>
                <?php $__currentLoopData = $data['ac']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $aCat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($key, false); ?>"><?php echo e($aCat, false); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
        <?php endif; ?>
    </div>
</div>
<?php if(request()->is('account/transaction-head')): ?>
    <div class="form-group">
        <label for="account_type" class="col-sm-4 control-label">Opening Balance <i class="text-danger">*</i></label>
        <div class="col-sm-4">
            <select class="form-control" id="account_type" name="account_type" autocomplete="off">
                <option value="dr_amt">Debit (+)</option>
                <option value="cr_amt">Credit (-)</option>
            </select>
        </div>
        <div class="col-sm-4">
            <input type="number" class="form-control" step="any" name="amount" id="amount" placeholder="Amount"  autocomplete="off">
        </div>
    </div>
<?php endif; ?>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/head/includes/form.blade.php ENDPATH**/ ?>