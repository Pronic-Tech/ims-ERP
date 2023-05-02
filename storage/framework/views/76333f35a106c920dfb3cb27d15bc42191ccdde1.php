<div class="form-group table-responsive">
    <table id="studentsTable" class="table table-striped table-bordered table-hover">
        <thead>
            <tr>
                <th>Sort</th>
                <th>Reg.Number</th>
                <th>Student Name</th>
                <th>Absent (Theory)</th>
                <th>Obtain Mark (Theory)</th>
                <th>Absent (Practical)</th>
                <th>Obtain Mark (Practical)</th>
                <th></th>
            </tr>
        </thead>
        <tbody id="student_wrapper">

        </tbody>

    </table>
</div>
<?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-ledger/includes/student.blade.php ENDPATH**/ ?>