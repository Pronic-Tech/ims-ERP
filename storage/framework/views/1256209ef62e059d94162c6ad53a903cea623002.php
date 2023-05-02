<?php $__currentLoopData = $exist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr class="option_value" style="background:lightgrey">
        <td>
            <div class="btn-group">
                <label class="btn btn-xs btn-primary">
                    <i class="ace-icon fa fa-arrows bigger-120"></i>
                </label>
            </div>
        </td>
        <td>
            <input type="hidden" name="students_id[]" value="<?php echo e($student->student_id, false); ?>">
            <?php echo e($student->reg_no, false); ?>

        </td>
        <td>
            <?php echo e($student->first_name.' '.$student->middle_name.' '.$student->last_name, false); ?>

        </td>
        <td>
            <?php echo Form::checkbox('absent_theory[]', $student->student_id, in_array($student->student_id, $absent_theory), ['class' => 'form-control']); ?>

        </td>
        <td>
            <?php echo Form::number('obtain_mark_theory[]', $student->obtain_mark_theory, ["class" => "form-control border-form","min"=>"0",'step'=>'any']); ?>

        </td>
        <td>
            <?php echo Form::checkbox('absent_practical[]', $student->student_id, in_array($student->student_id, $absent_practical), ['class' => 'form-control']); ?>

        </td>
        <td>
            <?php echo Form::number('obtain_mark_practical[]', $student->obtain_mark_practical, ["class" => "form-control border-form","min"=>"0",'step'=>'any']); ?>

        </td>

        <td>
            <div class="btn-group">
                <label class="btn btn-xs btn-danger" onclick="$(this).closest('tr').remove();">
                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                </label>
            </div>
        </td>
    </tr>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-ledger/includes/student_tr_rows.blade.php ENDPATH**/ ?>