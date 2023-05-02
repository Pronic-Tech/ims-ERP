<div class="form-group">
    <?php echo Form::label('reg_no', 'REG. NO.', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('reg_no', null, ["placeholder" => "", "class" => "form-control border-form input-mask-registration", "autofocus"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'reg_no'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('join_date', 'Join Date', ['class' => 'col-sm-1 control-label']); ?>

    <div class=" col-sm-3">
        <div class="input-group ">
            <?php echo Form::text('join_date_start', null, ["placeholder" => "", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

            <span class="input-group-addon">
                    <i class="fa fa-exchange"></i>
                </span>
            <?php echo Form::text('join_date_end', null, ["placeholder" => "", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'join_date_start'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'join_date_end'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>

    <label class="col-sm-1 control-label">Designation</label>
    <div class="col-sm-2">
        <?php echo Form::select('designation', $data['designation'], null, ['class' => 'form-control chosen-select']); ?>


    </div>

    <label class="col-sm-1 control-label">Status</label>
    <div class="col-sm-1">
        <select class="form-control border-form" name="status" id="cat_id">
            <option value="all"> Select Status </option>
            <option value="active" >Active</option>
            <option value="in-active" >In-Active</option>
        </select>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/staff/includes/common/staff_search_form.blade.php ENDPATH**/ ?>