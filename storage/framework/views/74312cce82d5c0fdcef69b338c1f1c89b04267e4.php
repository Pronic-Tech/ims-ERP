<tr class="option_value">
    <td>
        <?php echo Form::hidden('gsID[]', null, ['class' => 'form-control', 'required']); ?>

        <?php echo Form::text('name[]', null, ['class' => 'form-control upper', 'required']); ?>

    </td>
    <td>
        <?php echo Form::number('percentage_from[]', null, ['class' => 'form-control','step' => 'any', 'required']); ?>

    </td>
    <td>
    <?php echo Form::number('percentage_to[]', null, ['class' => 'form-control','step' => 'any', 'required']); ?>

    </td>
    <td>
        <?php echo Form::text('grade_point[]', null, ['class' => 'form-control']); ?>

    </td>
    <td>
        <?php echo Form::textarea('description[]', null, ['class' => 'form-control','rows'=>'1']); ?>

    </td>
    <td>
        <div class="btn-group">
            <button type="button" class="btn btn-xs btn-danger" onclick="$(this).closest('tr').remove();">
                <i class="ace-icon fa fa-trash-o bigger-120"></i>
            </button>
        </div>

    </td>
</tr>

<script>
    $(document).ready(function () {
        /*Change Field Value on Capital Letter When Keyup*/
        $(function () {
            $('.upper').keyup(function () {
                this.value = this.value.toUpperCase();
            });
        });
        /*end capital function*/
    });
</script><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/grading/includes/grade_tr.blade.php ENDPATH**/ ?>