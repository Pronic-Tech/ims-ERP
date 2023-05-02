<div class="text-center">
    <?php if(isset($generalSetting->print_footer)): ?>
        <div class="hr hr-2"></div>
        <?php echo $generalSetting->print_footer; ?>

    <?php endif; ?>
    <span class="invoice-info-label">User:</span>
    <span class="red"><?php echo e(isset(auth()->user()->name)?auth()->user()->name:"", false); ?></span>,
    <span class="invoice-info-label">Date:</span>
    <span class="blue"><?php echo e($date =  \Carbon\Carbon::parse(now())->format('Y-m-d'), false); ?></span>

</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/includes/print-footer.blade.php ENDPATH**/ ?>