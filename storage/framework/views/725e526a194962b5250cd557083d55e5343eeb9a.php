<div class="clearfix hidden-print ">
    <div class="easy-link-menu align-left">
        <a class="<?php echo request()->is('user')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('user'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Detail</a>
        <?php if (\Entrust::ability('super-admin,admin', 'user-add')) : ?>
            <a class="<?php echo request()->is('user/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('user.add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Create User</a>
        <?php endif; // Entrust::ability ?>
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/includes/buttons.blade.php ENDPATH**/ ?>