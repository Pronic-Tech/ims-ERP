<div class="clearfix hidden-print " >
    <div class="easy-link-menu align-left">
        <a class="<?php echo request()->is('account/bank')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.bank'), false); ?>"><i class="fa fa-bank" aria-hidden="true"></i>&nbsp;Manage Bank</a>
        <a class="<?php echo request()->is('account/bank/add')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.bank.add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add New Bank</a>
        <a class="<?php echo request()->is('account/bank-transaction*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.bank-transaction'), false); ?>"><i class="fa fa-list-alt" aria-hidden="true"></i> Transactions Detail</a>
        <a class="<?php echo request()->is('account/bank-transaction/add')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('account.bank-transaction.add'), false); ?>"><i class="fa fa-exchange" aria-hidden="true"></i> Bank&nbsp;Transaction</a>
    </div>
</div>
<hr class="hr-4"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/bank/includes/buttons.blade.php ENDPATH**/ ?>