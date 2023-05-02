<div class="form-group">
    <table id="sample-table-1" class="table table-striped table-bordered table-hover">
        
        <thead>
        <tr>
            <th>&nbsp;</th>
            <th>Date</th>
            <th width="30%">Ledger</th>
            <th width="30%">Description</th>
            <th>Dr. Amount</th>
            <th>Cr. Amount</th>
            <th>
                <span class="btn btn-xs btn-primary" id="load-transaction-html">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </span>
            </th>
        </tr>
        </thead>

        <tbody id="transaction_wrapper">
        <tr>
            <td>
                <div class="btn-group">
                        <span class="btn btn-xs btn-primary" >
                            <i class="fa fa-arrows" aria-hidden="true"></i>
                        </span>
                </div>
            </td>
            <td>
                <?php echo Form::hidden('chkIds[]', 1, ["class" => "input-sm form-control border-form"]); ?>

                <?php echo Form::text('date[]', null, ["class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd","required","autofocus"]); ?>

            </td>
            <td>
                <select name="tr_head[]" class="chosen-select form-control" id="form-field-select-3" data-placeholder="Choose a Ledger/Transaction Head..." required>
                    <option value="">  </option>
                    <?php $__currentLoopData = $data['th']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $th): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($key, false); ?>"><?php echo e($th, false); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </td>
            <td>
                <input type="text" class="form-control" name="description[]" id="description" required>
            </td>
            <td>
                <input type="number" class="form-control" step="any" name="dr_amount[]" id="dr_amount" min="0" placeholder="0"  autocomplete="off" required>
            </td>
            <td>
                <input type="number" class="form-control" step="any" name="cr_amount[]" id="cr_amount" min="0" placeholder="0"  autocomplete="off" required>
            </td>

            <td>
                <div class="btn-group">
                        <span class="btn btn-xs btn-danger" onclick="$(this).closest('tr').remove();">
                            <i class="fa fa-trash bigger-120" aria-hidden="true"></i>
                        </span>
                </div>
            </td>
        </tr>
        </tbody>
        

    </table>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/multi-transaction/includes/form.blade.php ENDPATH**/ ?>