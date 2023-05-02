<table class="tab-content">
    <tr>
        <td class="text-right">Name</td>
        <td> : </td>
        <th class="text-left"><?php echo e($data['student']->first_name.' '.$data['student']->middle_name.' '.$data['student']->last_name, false); ?></th>

        <td class="text-right">Reg.No.</td>
        <td> : </td>
        <th class="text-left"><?php echo e($data['student']->reg_no, false); ?></th>
    </tr>
    <tr>
        <td colspan="6">
            <hr class="hr hr-2">
        </td>
    </tr>
    <tr>
        <td class="text-right">Father Name</td>
        <td> : </td>
        <th class="text-left"><?php echo e($data['student']->father_first_name.' '.$data['student']->father_middle_name.' '.$data['student']->father_last_name, false); ?></th>
        <td class="text-right">Batch/Session</td>
        <td> : </td>
        <th class="text-left"><?php echo e($data['student']->title, false); ?></th>
    </tr>
    <tr>
        <td colspan="6">
            <hr class="hr hr-2">
        </td>
    </tr>
    <tr>
        <td class="text-right">Faculty/Class</td>
        <td> : </td>
        <th class="text-left"><?php echo e(ViewHelper::getFacultyTitle($data['student']->faculty), false); ?></th>
        <td class="text-right">Sem./Sec.</td>
        <td> : </td>
        <th class="text-left"><?php echo e(ViewHelper::getSemesterTitle($data['student']->semester), false); ?></th>
    </tr>

</table><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/includes/studentinfo.blade.php ENDPATH**/ ?>