<div class="clearfix hidden-print ">
    <div class=" align-right">
        <a class="<?php echo request()->is('attendance/student*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('attendance.student'), false); ?>"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i>&nbsp;Student Regular Attendance</a>
        <a class="<?php echo request()->is('attendance/subject*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('attendance.subject'), false); ?>"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i>&nbsp;Student Subject Wise Attendance</a>
        <a class="<?php echo request()->is('attendance/staff*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('attendance.staff'), false); ?>"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i>&nbsp;Staff Attendance</a>
        
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/attendance/includes/buttons.blade.php ENDPATH**/ ?>