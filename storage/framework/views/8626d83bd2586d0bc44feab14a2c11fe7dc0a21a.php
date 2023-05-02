<div class="footer hidden-print">
    <div class="footer-inner">
        <div class="footer-content">
            <span class="bigger-120">
                <?php if(isset($generalSetting->copyright)): ?>
                    <?php if(isset($generalSetting->institute)): ?>
                        <span class="blue bolder"><a href="<?php echo e(isset($generalSetting->website)?$generalSetting->website:'#', false); ?>"><?php echo e($generalSetting->institute, false); ?></a></span>
                    <?php endif; ?>
                    &copy;
                    <?php echo $generalSetting->copyright; ?>

                <?php else: ?>
                    <span class="blue bolder"><a href="https://codecanyon.net/item/unlimited-edu-firm-school-college-information-management-system/21850988">Unlimited Edu Firm</a></span>
                    &copy;
                    <a href="http://businesswithtechnology.com" target="_blank">Business With Technology Pvt. Ltd.</a>
                <?php endif; ?>
            </span>
        </div>
    </div>
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/layouts/includes/footer.blade.php ENDPATH**/ ?>