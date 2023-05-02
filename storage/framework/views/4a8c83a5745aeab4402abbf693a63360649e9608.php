<div class="form-group">
    <?php echo Form::label('reg_no', 'REG. NO.', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('reg_no', null, ["placeholder" => "", "class" => "form-control border-form input-mask-registration", "autofocus"]); ?>

    </div>

    <?php echo Form::label('reg_date', 'Reg. Date', ['class' => 'col-sm-1 control-label']); ?>

    <div class=" col-sm-3">
        <div class="input-group ">
            <?php echo Form::text('reg_start_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

            <span class="input-group-addon">
                <i class="fa fa-exchange"></i>
            </span>
            <?php echo Form::text('reg_end_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

        </div>
    </div>

    <label class="col-sm-1 control-label">Status</label>
    <div class="col-sm-2">
        <?php echo Form::select('academic_status', $data['academic_status'], null, ['class' => 'form-control', 'onChange' => 'loadSemesters(this);']); ?>

    </div>
    <div class="col-sm-2">
        <select class="form-control border-form" name="status" id="cat_id">
            <option value="all"> Select Status </option>
            <option value="active" >Active</option>
            <option value="in-active" >In-Active</option>
        </select>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label">Faculty/Class</label>
    <div class="col-sm-4">
        <?php echo Form::select('faculty', $data['faculties'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadSemesters(this);']); ?>

    </div>

    <label class="col-sm-1 control-label">Sem./Sec.</label>
    <div class="col-sm-2">
        <select name="semester_select" class="form-control semester_select" >
            <option value="0"> Select Sem./Sec. </option>
        </select>
    </div>

    <label class="col-sm-1 control-label">Batch</label>
    <div class="col-sm-2">
        <?php echo Form::select('batch', $data['batch'], null, ['class' => 'form-control']); ?>

    </div>
</div>

<div class="form-group">
    <?php echo Form::label('nationality', 'Nationality', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('nationality', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'nationality'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('national_id_type', 'National Id', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('national_id_type', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'national_id_type'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('national_id_number', 'National Id Number', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('national_id_number', null, ["class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'national_id_number'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('extra_id_card_type', 'Extra Id Card Type', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('extra_id_card_type', null, ["class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'extra_id_card_type'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('extra_id_card_number', 'Extra Id Number', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('extra_id_card_number', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'extra_id_card_number'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
    <?php echo Form::label('mother_tongue', 'Mother Tongue', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('mother_tongue', null, ["class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'mother_tongue'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <?php echo Form::label('religion', 'Religion', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('religion', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'religion'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('caste', 'Caste', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('caste', null, ["class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'caste'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
    <?php echo Form::label('email', 'E-mail', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::text('email', null, ["class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'email'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/student/includes/search_form.blade.php ENDPATH**/ ?>