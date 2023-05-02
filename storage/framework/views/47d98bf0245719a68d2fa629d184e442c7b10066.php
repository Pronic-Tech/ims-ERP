<h4 class="header large lighter blue"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Search Student</h4>
<div class="form-horizontal">
    <div class="form-group">
        <?php echo Form::label('Date', 'Date', ['class' => 'col-sm-2 control-label']); ?>

        <div class=" col-sm-3">
                <?php echo Form::text('date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd","required", "onChange"=>"loadStaff(this);"]); ?>

                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'date'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>

        <label class="col-sm-2 control-label">Designation</label>
        <div class="col-sm-5">
            <?php echo Form::select('designation', $data['designation'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadStaff(this);']); ?>

        </div>
    </div>
    <div class="hr hr-18 dotted hr-double"></div>
</div>
<!-- Option Values -->


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/attendance/staff/includes/form.blade.php ENDPATH**/ ?>