<?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr class="option_value">
    <td>
        <div class="btn-group">
            <label class="btn btn-xs btn-primary">
                <i class="ace-icon fa fa-arrows bigger-120"></i>
            </label>
        </div>
    </td>
    <td>
        <input type="hidden" name="sem_subject_id[]" value="<?php echo e($subject->id, false); ?>">
        <?php echo Form::text('subjects_id[]', $subject->title, ['class' => 'form-control',"disabled"]); ?>

    </td>
    <td>
        <?php echo Form::text('date[]', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "required"]); ?>

    </td>
    <td>
        <?php echo Form::time('start_time[]', null, ["class" => "form-control border-form", "required"]); ?>

    </td>
    <td>
        <?php echo Form::time('end_time[]', null, ["class" => "form-control border-form", "required"]); ?>

    </td>
    <td>
        <?php echo Form::text('full_mark_theory[]', $subject->full_mark_theory, ["class" => "form-control border-form upper"]); ?>

    </td>
    <td>
        <?php echo Form::text('pass_mark_theory[]', $subject->pass_mark_theory, ["class" => "form-control border-form upper"]); ?>

    </td>
    <td>
        <?php echo Form::text('full_mark_practical[]', $subject->full_mark_practical, ["class" => "form-control border-form upper"]); ?>

    </td>
    <td>
        <?php echo Form::text('pass_mark_practical[]', $subject->pass_mark_practical, ["class" => "form-control border-form upper"]); ?>

    </td>
    <td>
        <div class="btn-group">
            <button type="button" class="btn btn-xs btn-danger" onclick="$(this).closest('tr').remove();">
                <i class="ace-icon fa fa-trash-o bigger-120"></i>
            </button>
        </div>
    </td>
</tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/schedule/includes/subject_tr.blade.php ENDPATH**/ ?>