<div class="row" >
    <div class="col-md-1 align-left" style="height: 100px;">
        <?php if(isset($generalSetting->logo)): ?>
            <img src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$generalSetting->logo), false); ?>" width="100px">
        <?php endif; ?>
    </div>
    <div class="col-md-11 text-center">
        
        <h6 class="no-margin-top" style="font-size: 14px">
            <?php echo e(isset($generalSetting->salogan)?$generalSetting->salogan:"", false); ?>

        </h6>
        <h2 class="no-margin-top text-uppercase" style="font-family: 'Bowlby+One+SC'; font-size: 30px; font-weight: 600">
            <strong><?php echo e(isset($generalSetting->institute)?$generalSetting->institute:"", false); ?></strong>
        </h2>
        <h5 class="no-margin-top" style="font-size: 16px;">
            <?php echo e(isset($generalSetting->address)?$generalSetting->address:"", false); ?>, <?php echo e(isset($generalSetting->phone)?$generalSetting->phone:"", false); ?>

        </h5>
        <h5 class="no-margin-top" style="font-size: 16px;">
            <?php echo e(isset($generalSetting->email)?$generalSetting->email:"", false); ?>, <?php echo e(isset($generalSetting->website)?$generalSetting->website:"", false); ?>

        </h5>

    </div>
</div>
<div class="space-4"></div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/includes/institution-detail.blade.php ENDPATH**/ ?>