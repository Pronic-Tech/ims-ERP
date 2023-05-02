<div class="clearfix hidden-print " >
    <div class="easy-link-menu align-left">
        <a class="<?php echo request()->is('setting/general')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.general'), false); ?>"><i class="fa fa-cog" aria-hidden="true"></i>&nbsp;General Setting</a>
        <a class="<?php echo request()->is('setting/online-registration')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.online-registration'), false); ?>"><i class="fa fa-archive" aria-hidden="true"></i>&nbsp;Online Registration</a>
        <a class="<?php echo request()->is('setting/sms')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.sms'), false); ?>"><i class="fa fa-mobile" aria-hidden="true"></i>&nbsp;SMS Setting</a>
        <a class="<?php echo request()->is('setting/email')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.email'), false); ?>"><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;E-Mail Setting</a>
        <a class="<?php echo request()->is('setting/alert*')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.alert'), false); ?>"><i class="fa fa-bell icon-animated-bell" aria-hidden="true"></i>&nbsp;Alert Setting</a>
        <a class="<?php echo request()->is('setting/payment-gateway')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.payment-gateway'), false); ?>"><i class="fa fa-dollar" aria-hidden="true"></i>&nbsp;Payment Gateway</a>
        <a class="<?php echo request()->is('setting/meeting')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('setting.meeting'), false); ?>"><i class="fa fa-video-camera" aria-hidden="true"></i>&nbsp; Meeting - Remote Class</a>

    </div>
</div>
<hr class="hr-4"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/includes/buttons.blade.php ENDPATH**/ ?>