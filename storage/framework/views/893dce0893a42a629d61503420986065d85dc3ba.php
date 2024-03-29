<div class="form-group">
    <?php echo Form::label('years_id', 'Year', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::select('years_id', $data['years'], null, ["class" => "form-control border-form","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'years_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('months_id', 'Month', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-2">
        <?php echo Form::select('months_id', $data['months'], null, ["class" => "form-control border-form","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'months_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

    <?php echo Form::label('exams_id', 'Exam', ['class' => 'col-sm-1 control-label']); ?>

    <div class="col-sm-5">
        <?php echo Form::select('exams_id', $data['exams'], null, ["class" => "form-control border-form chosen-select","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'exams_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>

</div>
<div class="form-group">

    <label class="col-sm-1 control-label">Faculty/Class</label>
    <div class="col-sm-4">
        <?php echo Form::select('faculty', $data['faculties'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadSemesters(this);']); ?>


    </div>

    <label class="col-sm-1 control-label">Sem./Sec.</label>
    <div class="col-sm-2">
        <select name="semester_select" class="form-control semester_select" onChange ="loadSubject(this)">
            <option> Select Sem./Sec. </option>
        </select>
    </div>

    <label class="col-sm-1 control-label">Subject</label>
    <div class="col-sm-3">
        <select name="schedule_subject" class="form-control schedule_subject" onChange ="loadStudent(this)">
            <option> Select Subject </option>
        </select>
    </div>

</div>

<div class="space-4"></div>
<!-- Option Values -->
<?php echo $__env->make($view_path.'.includes.student', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-ledger/includes/form.blade.php ENDPATH**/ ?>