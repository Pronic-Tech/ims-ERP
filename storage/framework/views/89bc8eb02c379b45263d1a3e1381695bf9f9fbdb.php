<script src="<?php echo e(asset('assets/js/jquery.validate.min.js'), false); ?>"></script>
<script>
    function jqueryValidation(rules, messages) {
        $('#validation-form').validate({
            rules : rules,
            messages: messages,
        });
    }
</script><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/includes/scripts/jquery_validation_scripts.blade.php ENDPATH**/ ?>