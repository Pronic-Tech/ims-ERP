<div class="clearfix hidden-print ">
    <div class="easy-link-menu">
        <a class="<?php echo request()->is('exam/mark-ledger')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('exam.mark-ledger'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Mark Ledger Detail</a>
        <a class="<?php echo request()->is('exam/mark-ledger/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('exam.mark-ledger.add'), false); ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Prepare Ledger / Edit</a>
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/examination/mark-ledger/includes/buttons.blade.php ENDPATH**/ ?>