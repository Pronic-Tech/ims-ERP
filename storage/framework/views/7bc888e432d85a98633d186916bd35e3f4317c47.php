<?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr class="option_value">
        <td>
            <?php echo e($subject->code, false); ?>

        </td>
        <td>
            <input type="hidden" name="sem_subject_id[]" value="<?php echo e($subject->id, false); ?>">
            <input type="hidden" name="action[]" value="update">
            <p><?php echo e($subject->title, false); ?></p>
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

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/semester/includes/subject_tr_rows.blade.php ENDPATH**/ ?>