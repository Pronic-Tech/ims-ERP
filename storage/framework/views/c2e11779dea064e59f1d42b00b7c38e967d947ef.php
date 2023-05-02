<script src="<?php echo e(asset('assets/js/jquery-ui.min.js'), false); ?>"></script>
<script>
    $(document).ready(function () {

        $('table tbody').sortable({
            helper: fixWidthHelper
        }).disableSelection();

        function fixWidthHelper(e, ui) {
            ui.children().each(function() {
                $(this).width($(this).width());
            });
            return ui;
        }

    });
</script><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/includes/scripts/table_tr_sort.blade.php ENDPATH**/ ?>