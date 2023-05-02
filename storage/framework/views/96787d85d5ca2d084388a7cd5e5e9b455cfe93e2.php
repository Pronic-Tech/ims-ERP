<div class="clearfix hidden-print ">
    <div class="">
        <a class="<?php echo request()->is('account/transaction')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.transaction'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Detail</a>
        <a class="<?php echo request()->is('account/transaction/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.transaction.add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i> Transaction</a>
        <a class="<?php echo request()->is('account/transaction/multi-add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.transaction.multi-add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i> Multi Adjustment Transaction</a>
        <a class="<?php echo request()->is('account/transfer')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.transfer'), false); ?>"><i class="fa fa-exchange" aria-hidden="true"></i>&nbsp;Acc To Acc</a>
        <a class="<?php echo request()->is('account/transaction-head')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.transaction-head'), false); ?>"><i class="fa fa-newspaper-o" aria-hidden="true"></i>&nbsp;Ledgers</a>
        <a class="<?php echo request()->is('account/transaction/account-group')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.transaction.account-group'), false); ?>"><i class="fa fa-tree" aria-hidden="true"></i>&nbsp;Acc Group</a>
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/includes/buttons.blade.php ENDPATH**/ ?>