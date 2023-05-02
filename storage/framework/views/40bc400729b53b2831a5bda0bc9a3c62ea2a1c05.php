<table class="tab-content">
    <tr>
        <td class="text-right">Name</td>
        <td> : </td>
        <th class="text-left"><?php echo e($student->first_name.' '.$student->middle_name.' '.$student->last_name, false); ?></th>

        <td class="text-right">Reg.No.</td>
        <td> : </td>
        <th class="text-left"><?php echo e($student->reg_no, false); ?></th>
    </tr>
    <tr>
        <td colspan="6">
            <hr class="hr hr-2">
        </td>
    </tr>
    <tr>
        <td class="text-right">Father Name</td>
        <td> : </td>
        <th class="text-left"><?php echo e($student->father_first_name.' '.$student->father_middle_name.' '.$student->father_last_name, false); ?></th>
        <td class="text-right">Batch/Session</td>
        <td> : </td>
        <th class="text-left"><?php echo e($student->title, false); ?></th>
    </tr>
    <tr>
        <td colspan="6">
            <hr class="hr hr-2">
        </td>
    </tr>
    <tr>
        <td class="text-right">Faculty/Class</td>
        <td> : </td>
        <th class="text-left"><?php echo e(ViewHelper::getFacultyTitle($student->faculty), false); ?></th>
        <td class="text-right">Sem./Sec.</td>
        <td> : </td>
        <th class="text-left"><?php echo e(ViewHelper::getSemesterTitle($student->semester), false); ?></th>
    </tr>

</table><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/includes/studentinfo-due.blade.php ENDPATH**/ ?>