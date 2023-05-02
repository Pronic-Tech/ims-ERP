<div class="clearfix hidden-print " >
    <div class="easy-link-menu align-left">
        <a class="<?php echo request()->is('account/report/cash-book')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.report.cash-book'), false); ?>"><i class="fa fa-dollar" aria-hidden="true"></i>&nbsp;Cash Book</a>
        <a class="<?php echo request()->is('account/report/fee-collection')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.report.fee-collection'), false); ?>"><i class="fa fa-calculator" aria-hidden="true"></i>&nbsp;Fee Collection</a>
        <a class="<?php echo request()->is('account/report/fee-online-payment')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.report.fee-online-payment'), false); ?>"><i class="fa fa-globe" aria-hidden="true"></i> Online Payment</a>
        <a class="<?php echo request()->is('account/report/fee-collection-head')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.report.fee-collection-head'), false); ?>"><i class="fa fa-calculator" aria-hidden="true"></i>&nbsp;Fee Collection Head</a>
        <a class="<?php echo request()->is('account/report/balance-fee')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.report.balance-fee'), false); ?>"><i class="fa fa-calculator" aria-hidden="true"></i>&nbsp;Fee Balance Statement</a>
        <a class="<?php echo request()->is('account/transaction-head/view')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.transaction-head.view'), false); ?>"><i class="fa fa-calculator" aria-hidden="true"></i>&nbsp;Statement of Ledger</a>
        <a class="<?php echo request()->is('account/transaction-head/balance-statement')?'btn-success':'btn-primary'; ?> btn-sm " href="<?php echo e(route('account.transaction-head.balance-statement'), false); ?>"><i class="fa fa-calculator" aria-hidden="true"></i>&nbsp;Ledger Balance</a>
    </div>
    <hr class="hr-4">
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/report/includes/buttons.blade.php ENDPATH**/ ?>