<hr class="hr hr-2">
<div class="row align-center">
    <span class="receipt-copy"><?php echo e($data['print_head'], false); ?></span>
</div>
<hr class="hr hr-2">
<table width="100%" class="table-bordered">
    <thead>
    <tr>
        <th>Particulars</th>
        <th class="text-right">Credit (-)</th>
        <th class="text-right">Debit (+)</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="text-right"><strong>Opening Balance </strong></td>
        <td class="text-right"><strong><?php echo e($data['total']['opening'], false); ?></strong></td>
        <td class="text-right"> </td>
    </tr>
    <tr>
        <td class="text-left">Total Fee Collected</td>
        <td class="text-right"><?php echo e($data['fee_collection'], false); ?> </td>
        <td class="text-right"></td>
    </tr>
    <tr>
        <td class="text-left">Total Salary Pay</td>
        <td class="text-right"></td>
        <td class="text-right"><?php echo e($data['salary_pay'], false); ?> </td>
    </tr>
    <tr>
        <td class="text-left">Bank deposit / withdraw amount</td>
        <td class="text-right"><?php echo e($data['bank_transaction']->sum('cr_amt'), false); ?></td>
        <td class="text-right"><?php echo e($data['bank_transaction']->sum('dr_amt'), false); ?></td>
    </tr>
    <tr>
        <td class="text-left">Transactions on different Ledger</td>

        <td class="text-right"><?php echo e($data['transaction']->sum('cr_amount'), false); ?></td>
        <td class="text-right"><?php echo e($data['transaction']->sum('dr_amount'), false); ?></td>
    </tr>
    <tr>
        <td class="text-right"><strong>Closing Balance Cash on Hand</strong></td>
        <td class="text-right"></td>
        <td class="text-right"><strong><?php echo e($data['total']['coh'], false); ?></strong> </td>
    </tr>
    </tbody>
    <tfoot>
    <tr style="font-size: 14px; background: orangered;color: white; border:1px black solid; font-weight: bold">
        <td class="text-center">Account Tally</td>
        <td class="text-right"><?php echo e($data['total']['cr'], false); ?></td>
        <td class="text-right"><?php echo e($data['total']['dr'], false); ?></td>
    </tr>
    </tfoot>
</table>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/report/cash-book/includes/table-data.blade.php ENDPATH**/ ?>