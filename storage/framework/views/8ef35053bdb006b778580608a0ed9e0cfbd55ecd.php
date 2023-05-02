<div class="tabbable tabs-left">
    <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
        <li class="active">
            <a data-toggle="tab" href="#webpage"><i class="ace-icon fa fa-globe bigger-110"></i> WebPage</a>
        </li>
        <li>
            <a data-toggle="tab" href="#logoicon"><i class="ace-icon fa fa-picture-o bigger-110"></i> Logo & Icon</a>
        </li>

        <li>
            <a data-toggle="tab" href="#navigation"><i class="ace-icon fa fa-list bigger-110"></i> Navigation/Menu</a>
        </li>

        <li>
            <a data-toggle="tab" href="#headerfooter"><i class="ace-icon fa fa-code bigger-110"></i>Custom Scripts</a>
        </li>
        <li>
            <a data-toggle="tab" href="#customcss"><i class="ace-icon fa fa-css3 bigger-110"></i> Custom Css</a>
        </li>
        <li>
            <a data-toggle="tab" href="#analytics"><i class="ace-icon fa fa-bar-chart bigger-110"></i> Analytics & Captcha</a>
        </li>
        <li>
            <a data-toggle="tab" href="#facebook-widget"><i class="ace-icon fa fa-facebook bigger-110"></i> Facebook Widget</a>
        </li>
    </ul>

    <div class="tab-content">
        <div id="webpage" class="tab-pane active">
            <?php echo $__env->make($view_path.'.includes.forms.webpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="logoicon" class="tab-pane">
            <?php echo $__env->make($view_path.'.includes.forms.logoicon', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="navigation" class="tab-pane">
            <?php echo $__env->make($view_path.'.includes.forms.navigation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="headerfooter" class="tab-pane">
            <?php echo $__env->make($view_path.'.includes.forms.headerfooter', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="customcss" class="tab-pane">
            <?php echo $__env->make($view_path.'.includes.forms.customcss', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="analytics" class="tab-pane">
            <?php echo $__env->make($view_path.'.includes.forms.analytics', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="facebook-widget" class="tab-pane">
            <?php echo $__env->make($view_path.'.includes.forms.facebook-widget', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>

    <div class="hr hr-24"></div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/general/includes/form.blade.php ENDPATH**/ ?>