<h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Participants List</h4>
<?php echo Form::open(['route' => 'print-out.exam.mark-sheet', 'id' => 'print-student-marksheet']); ?>


    <div class="clearfix">
        <label class="pos-rel">
            <input type="radio" name="result-type" value="grading" id="typeGrading" class="ace" />
            <span class="lbl"></span> Grading
        </label>
        <label class="pos-rel">
            <input type="radio" name="result-type" value="percentage" id="typePercentage" class="ace" />
            <span class="lbl"></span> Percentage
        </label>
        <label class="pos-rel">
            <input type="radio" name="result-type" value="ledger" id="typeLedger" class="ace" />
            <span class="lbl"></span> Ledger
        </label>
        <a type="submit" class="btn-primary btn-sm print-marksheets" ><i class="fa fa-print" aria-hidden="true"></i>&nbsp; Print Mark Sheets</a>
        <span class="pull-right tableTools-container"></span>
    </div>
    <div class="table-header">
        <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
    </div>
    <!-- div.table-responsive -->
    <div class="table-responsive">
        <input type="hidden" name="exam_schedule_id" value="<?php echo e($data['exam_schedule_id'], false); ?>"/>
        <input type="hidden" name="exams_id" value="<?php echo e($data['exam'], false); ?>"/>
        <input type="hidden" name="year_id" value="<?php echo e($data['year'], false); ?>"/>
        <input type="hidden" name="month_id" value="<?php echo e($data['month'], false); ?>"/>
        <input type="hidden" name="faculty_id" value="<?php echo e($data['faculty'], false); ?>"/>
        <input type="hidden" name="semester_id" value="<?php echo e($data['semester'], false); ?>"/>
        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>S.N.</th>
                        <th>Reg.Number</th>
                        <th>Student Name</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['ledger_exist']) && $data['ledger_exist']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['ledger_exist']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="center first-child">
                                    <label>
                                        <input type="checkbox" name="chkIds[]" value="<?php echo e($student->students_id, false); ?>" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo e($i, false); ?></td>
                                <td><a href="<?php echo e(route('student.view', ['id' => $student->students_id]), false); ?>"><?php echo e($student->reg_no, false); ?></a></td>
                                <td><?php echo e($student->first_name.' '.$student->middle_name.' '.$student->last_name, false); ?></td>
                            </tr>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="4">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
    </div>

<?php echo Form::close(); ?>


</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-sheet/includes/table.blade.php ENDPATH**/ ?>