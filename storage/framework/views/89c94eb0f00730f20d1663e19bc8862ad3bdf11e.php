<?php if($data['tag'] =='daily' || $data['tag'] =='weekly' || $data['tag'] =='monthly' || $data['tag'] =='yearly'): ?>
    <?php echo $__env->make('account.report.cash-book.includes.daily-table-data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php elseif(isset($data['print_head'])): ?>
    <?php echo $__env->make('account.report.cash-book.includes.table-data', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php else: ?>
<?php endif; ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/report/cash-book/includes/table.blade.php ENDPATH**/ ?>