<div class="btn btn-block btn-primary">Logo & Default Banner Setting</div>
<hr class="hr-16" />

<?php if(isset($data['row'])): ?>
    <div class="form-group">
        <label class="col-sm-3 control-label">Existing Favicon</label>
        <div class="col-sm-9">
            <?php if($data['row']->favicon): ?>
                <img src="<?php echo e(asset('web/'.$folder_name.'/'.$data['row']->favicon), false); ?>">
            <?php else: ?>
                <p>No image.</p>
            <?php endif; ?>
        </div>
    </div>
<?php endif; ?>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('favicon_image', 'Favicon', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::file('favicon_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'favicon_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Recommended Minimum Image Size 16px X 16px(72dpi)</span>
    </div>
</div>

<div class="space-4"></div>

<?php if(isset($data['row'])): ?>
    <div class="form-group">
        <label class="col-sm-3 control-label">Existing Site Logo</label>
        <div class="col-sm-9">
            <?php if($data['row']->site_logo): ?>
                <img src="<?php echo e(asset('web/'.$folder_name.'/'.$data['row']->site_logo), false); ?>" >
            <?php else: ?>
                <p>No image.</p>
            <?php endif; ?>
        </div>
    </div>
<?php endif; ?>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('site_logo_image', 'Site Logo', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::file('site_logo_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'site_logo_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Recommended Image Size 404*px X 84px(72dpi)</span>
    </div>
</div>

<div class="space-4"></div>

<?php if(isset($data['row'])): ?>
    <div class="form-group">
        <label class="col-sm-3 control-label">Existing Default Banner</label>
        <div class="col-sm-9">
            <?php if($data['row']->page_banner): ?>
                <img src="<?php echo e(asset('web/'.$folder_name.'/'.$data['row']->page_banner), false); ?>" width="250">
            <?php else: ?>
                <p>No image.</p>
            <?php endif; ?>
        </div>
    </div>
<?php endif; ?>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('page_banner_image', 'Default Banner', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::file('page_banner_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'page_banner_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Recommended Minimum Image Size 770px X 513px(72dpi)</span>
    </div>
</div>
<div class="space-4"></div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/general/includes/forms/logoicon.blade.php ENDPATH**/ ?>