<div class="clearfix hidden-print ">
    <div class="easy-link-menu align-left">
        <a class="<?php echo request()->is('role')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('role'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Detail</a>
        <a class="<?php echo request()->is('role/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('role.add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Create Role</a>

    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/role/includes/buttons.blade.php ENDPATH**/ ?>