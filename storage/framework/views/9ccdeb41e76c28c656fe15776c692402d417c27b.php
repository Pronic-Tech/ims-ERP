<!-- 'name', 'email', 'password', 'profile_image', 'email', 'contact_number', 'address','user_type', -->
<div class="tabbable">
    <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
        <li class="active">
            <a data-toggle="tab" href="#general"><i class="fa fa-list-alt bigger-110"></i> General Information & Branding</a>
        </li>
        <li>
            <a data-toggle="tab" href="#module"><i class="fa fa-list bigger-110"></i> Module Activation </a>
        </li>
        <li>
            <a data-toggle="tab" href="#tracking"><i class="fa fa-bar-chart bigger-110"></i> Analytics & Tracking</a>
        </li>
        <li>
            <a data-toggle="tab" href="#print"><i class="fa fa-print bigger-110"></i> Print</a>
        </li>
        <li>
            <a data-toggle="tab" href="#social"><i class="fa fa-facebook bigger-110"></i> Social Media</a>
        </li>
        
    </ul>

    <div class="tab-content">
        <div id="general" class="tab-pane active">
            <?php echo $__env->make('setting.general.includes.forms.general', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('setting.general.includes.forms.timezone', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="module" class="tab-pane">
            <?php echo $__env->make('setting.general.includes.forms.module', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="tracking" class="tab-pane">
            <?php echo $__env->make('setting.general.includes.forms.tracking', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="print" class="tab-pane">
            <?php echo $__env->make('setting.general.includes.forms.print', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div id="social" class="tab-pane">
            <?php echo $__env->make('setting.general.includes.forms.social', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        
    </div>

    <div class="hr hr-24"></div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/general/includes/form.blade.php ENDPATH**/ ?>