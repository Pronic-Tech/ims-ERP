<div class="clearfix hidden-print " >
    <div class="easy-link-menu align-right">
        <a class="<?php echo request()->is('report/student*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('report.student'), false); ?>"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Student</a>
        <a class="<?php echo request()->is('report/staff*')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('report.staff'), false); ?>"><i class="fa fa-user-secret" aria-hidden="true"></i>&nbsp;Staff</a>

    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/report/includes/buttons.blade.php ENDPATH**/ ?>