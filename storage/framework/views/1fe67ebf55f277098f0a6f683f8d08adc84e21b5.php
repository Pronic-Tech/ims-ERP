<hr class="hr hr-2">
<div class="row align-center">
    <span class="receipt-copy text-uppercase"><?php echo e(ViewHelper::getFacultyTitle( $data['faculty'] ), false); ?> - Balance Statement</span>
</div>
<hr class="hr hr-2">

<table width="100%" class="table-bordered">
    <thead>
        <tr>
            <th>S.N.</th>
            <th>Sem./Sec.</th>
            <th>Reg. Num.</th>
            <th>Name of Student</th>
            <th>StudentContactNo.</th>
            <th>Guardian</th>
            <th>GuardianContactNo.</th>
            
            <th>Balance</th>
        </tr>
    </thead>
    <?php if(isset($data['student']) && $data['student']->count() > 0): ?>

    <tbody>
        <?php ($i=1); ?>
        <?php $__currentLoopData = $data['student']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td><?php echo e($i, false); ?></td>
                <td> <?php echo e(ViewHelper::getSemesterTitle( $student->semester ), false); ?></td>
                <td><?php echo e($student->reg_no, false); ?></td>
                <td> <?php echo e($student->first_name.' '.$student->middle_name.' '. $student->last_name, false); ?></td>
                <td> <?php echo e($student->mobile_1, false); ?></td>
                <td> <?php echo e($student->guardian_first_name.' '.$student->guardian_middle_name.' '. $student->guardian_last_name, false); ?></td>
                <td> <?php echo e($student->guardian_mobile_1, false); ?></td>
               
                <td class="text-right">
                    <?php echo e($student->balance, false); ?>

                </td>
            </tr>
            <?php ($i++); ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
    <tfoot>
        <tr style="font-size: 14px;font-weight: bold; background: orangered;color: white;">
            <td colspan="7" class="text-right">Total</td>
            
            <td  class="text-right"> <?php echo e($data['student']->sum('balance'), false); ?> </td>
        </tr>
    </tfoot>
    <?php else: ?>
        <tr>
            <td colspan="7">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
        </tr>
    <?php endif; ?>
</table>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/report/balance-fee/includes/table.blade.php ENDPATH**/ ?>