<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i> <?php echo e($panel, false); ?> History </h4>
        <div class="clearfix">
            <span class="pull-right tableTools-container"></span>
        </div>
        <div class="table-header">
            <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
        </div>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <table id="dynamic-table-1" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th >S.N.</th>
                            <th>Faculty/Class</th>
                            <th>Sem./Sec.</th>
                            <th>Reg.Num.</th>
                            <th>Name</th>
                            <th>Balance</th>
                            <th>Date</th>
                            <th>Amount</th>
                            <th>Gateway</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php if(isset($data['student']) && $data['student']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['student']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($i, false); ?></td>
                                <td> <?php echo e(ViewHelper::getFacultyTitle( $student->faculty ), false); ?></td>
                                <td> <?php echo e(ViewHelper::getSemesterTitle( $student->semester ), false); ?></td>
                                <td> <a href="<?php echo e(route('student.view', ['id' => $student->students_id]), false); ?>"><?php echo e($student->reg_no, false); ?></a></td>
                                <td> <a href="<?php echo e(route('student.view', ['id' => $student->students_id]), false); ?>"><?php echo e($student->first_name.' '.$student->middle_name.' '. $student->last_name, false); ?></a></td>
                                <td class="text-right"><?php echo e($student->balance, false); ?></td>
                                <td><?php echo e(\Carbon\Carbon::parse($student->date)->format('Y-m-d'), false); ?> </td>
                                <td class="text-right"><?php echo e($student->amount, false); ?></td>
                                <td><?php echo e($student->payment_gateway, false); ?></td>
                                <td>
                                    <?php if($student->payment_status == 0): ?>
                                        <span class="label label-danger">Not Verify</span>
                                    <?php else: ?>
                                        <span class="label label-success">Verified</span>
                                    <?php endif; ?>

                                    <div class="btn btn-primary btn-minier action-buttons">
                                        <a class="white" href="<?php echo e(route('account.fees.online-payment.view', ['id' => encrypt($student->payment_id)]), false); ?>">
                                            <i class="ace-icon fa fa-eye bigger-130"></i>&nbsp;View
                                        </a>
                                    </div>
                                </td>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="13">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                        </tr>
                    <?php endif; ?>
                    </tbody>
                    <tfoot>
                        <tr style="font-size: 14px; background: orangered;color: white;">
                            <td colspan="5" class="text-right">Total</td>
                            <td  class="text-right"><?php echo e($data['student']->sum('amount'), false); ?></td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                    </tfoot>
                </table>
        </div>
        <?php echo Form::close(); ?>

    </div>
</div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/online-payment/includes/table.blade.php ENDPATH**/ ?>