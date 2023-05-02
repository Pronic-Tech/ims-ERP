<tr class="option_value">
    <td>
        <div class="btn-group">
                <span class="btn btn-xs btn-primary" >
                    <i class="fa fa-arrows" aria-hidden="true"></i>
                </span>
        </div>
    </td>
    <td>
        <table id="responsive" class="table table-striped table-bordered table-hover">
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Institution
                </th>
                <td>
                    <?php echo Form::text('institution[]', null, ["class" => "col-md-10"]); ?>

                    
                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Board/Training
                </th>
                <td>
                    <?php echo Form::text('board[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Pass Year
                </th>
                <td>
                    <?php echo Form::text('pass_year[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Symbol Number
                </th>
                <td>
                    <?php echo Form::text('symbol_no[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Percentage
                </th>
                <td>
                    <?php echo Form::text('percentage[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Division / Grade
                </th>
                <td>
                    <?php echo Form::text('division_grade[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Major Subject
                </th>
                <td>
                    <?php echo Form::text('major_subjects[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
            <tr>
                <th class="align-right" style="border: none !important; background: none !important;">
                    Remark
                </th>
                <td>
                    <?php echo Form::text('remark[]', null, ["class" => "col-md-10"]); ?>

                </td>
            </tr>
        </table>
    </td>
    <td width="5%">
        <div class="btn-group">
            <button type="button" class="btn btn-xs btn-danger" onclick="$(this).closest('tr').remove();">
                <i class="ace-icon fa fa-trash-o bigger-120"></i>
            </button>
        </div>

    </td>
</tr>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/student/registration/includes/forms/academic_tr.blade.php ENDPATH**/ ?>