<?php ($i=1); ?>
<?php $__currentLoopData = $exist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr class="option_value" style="background:lightgrey">
        <td>
            <?php echo e($i, false); ?>

        </td>
        <td>
            <?php if($student->student_image != ''): ?>
                <img class="editable img-responsive" alt="" src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'studentProfile'.DIRECTORY_SEPARATOR.$student->student_image), false); ?>" width="50px" />
            <?php else: ?>
                <img class="editable img-responsive" alt="" src="<?php echo e(asset('assets/images/avatars/profile-pic.jpg'), false); ?>" width="50px"/>
            <?php endif; ?>
        </td>
        <td>
            <input type="hidden" name="students_id[]" value="<?php echo e($student->students_id, false); ?>">
            <?php echo e($student->reg_no, false); ?>

        </td>
        <td>
            <?php echo e($student->first_name.' '.$student->middle_name.' '.$student->last_name, false); ?>

        </td>
        <td>
            <?php $__currentLoopData = $attendanceStatus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <label class="pos-rel">
                    <?php echo Form::radio($student->students_id, $status->id, ($student->$day==$status->id?true:false), ['class' => 'ace status-'.$status->id,"required"]); ?>

                    <span class="lbl"></span> <span class="<?php echo e($status->display_class, false); ?> btn-sm"><?php echo e($status->title, false); ?></span>
                </label>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </td>
        <td>
            <div class="btn-group">
                <label class="btn btn-xs btn-danger" onclick="$(this).closest('tr').remove();">
                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                </label>
            </div>
        </td>
    </tr>
    <?php ($i++); ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/attendance/student/includes/student_tr_rows.blade.php ENDPATH**/ ?>