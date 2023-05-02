<div class="clearfix hidden-print ">
    <div class="easy-link-menu">
        <a class="<?php echo request()->is('exam/schedule')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('exam.schedule'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Schedules List</a>
        <a class="<?php echo request()->is('exam/schedule/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('exam.schedule.add'), false); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Schedule/Modify</a>
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/schedule/includes/buttons.blade.php ENDPATH**/ ?>