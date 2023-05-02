<div class="clearfix hidden-print " >
    <div class="easy-link-menu align-left">
        <a class="<?php echo request()->is('assignment')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('assignment'), false); ?>"><i class="fa fa-tasks" aria-hidden="true"></i>&nbsp;Assignment Detail</a>
        <a class="<?php echo request()->is('assignment/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('assignment.add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;New Assignment</a>
    </div>
</div>
<hr class="hr-4"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/assignment/includes/buttons.blade.php ENDPATH**/ ?>