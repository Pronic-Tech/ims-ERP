<tr class="option_value">
    <td>
        <?php echo e($subject->code, false); ?>

    </td>
    <td>
        <input type="hidden" name="sem_subject_id[]" value="<?php echo e($subject->id, false); ?>">
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

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/semester/includes/subject_tr.blade.php ENDPATH**/ ?>