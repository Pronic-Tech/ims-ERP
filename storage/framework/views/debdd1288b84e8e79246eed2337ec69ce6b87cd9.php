<h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?> List</h4>
<div class="clearfix">
    <span class="pull-right tableTools-container"></span>
</div>
<div class="table-header">
    <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
</div>
<!-- div.table-responsive -->
<div class="table-responsive">
        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>S.N.</th>
                    <th>Reg.Number</th>
                    <th>Student Name</th>
                    <th>Obtain Mark (Theory)</th>
                    <th>Obtain Mark (Practical)</th>
                    <th>Absent</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php if(isset($data['ledger_exist']) && $data['ledger_exist']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['ledger_exist']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($i, false); ?></td>
                            <td><?php echo e($student->reg_no, false); ?></td>
                            <td><?php echo e($student->first_name.' '.$student->middle_name.' '.$student->last_name, false); ?></td>
                            <td>
                                <?php if($student->absent_theory=='0'): ?>
                                    <?php echo e($student->obtain_mark_theory, false); ?>

                                <?php else: ?>
                                    <span class="label label-danger">
                                        A
                                    </span>
                                <?php endif; ?>
                            </td>
                            <td>
                                <?php if($student->absent_practical=='0'): ?>
                                    <?php echo e($student->obtain_mark_practical, false); ?>

                                <?php else: ?>
                                    <span class="label label-danger">
                                        A
                                    </span>
                                <?php endif; ?>
                            </td>
                            <td>
                                <?php if($student->absent_theory=='0'): ?>
                                    <span class="label label-primary">
                                        TH-Present
                                    </span>
                                <?php else: ?>
                                    <span class="label label-danger">
                                        TH-Absent
                                    </span>
                                <?php endif; ?>

                                <?php if($student->absent_practical=='0'): ?>
                                    <span class="label label-primary">
                                        PR-Present
                                    </span>
                                <?php else: ?>
                                    <span class="label label-danger">
                                        PR-Absent
                                    </span>
                                <?php endif; ?>
                            </td>
                            <td>
                                <div class="action-buttons">
                                   <a href="<?php echo e(route($base_route.'.delete', ['exam_id' => $student->exam_schedule_id,
                                        'student_id' => $student->student_id]), false); ?>" class="red bootbox-confirm">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <?php ($i++); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <tr>
                        <td colspan="8">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
</div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-ledger/includes/table.blade.php ENDPATH**/ ?>