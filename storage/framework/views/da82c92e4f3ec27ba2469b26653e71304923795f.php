<div class="clearfix hidden-print ">
    <div class="easy-link-menu align-right">
        <a class="<?php echo request()->is('exam')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('exam'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Exame Type</a>
        <a class="<?php echo request()->is('exam/schedule*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('exam.schedule'), false); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Schedule</a>
        <a class="<?php echo request()->is('exam/mark-ledger')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('exam.mark-ledger'), false); ?>"><i class="fa fa-share-alt" aria-hidden="true"></i>&nbsp;Manage Mark Ledger</a>
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/includes/buttons.blade.php ENDPATH**/ ?>