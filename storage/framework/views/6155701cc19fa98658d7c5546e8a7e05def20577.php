<div class="form-group">
    <?php echo Form::label('analytics_view_id', 'Analytics View Id', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('analytics_view_id', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'analytics_view_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Setup Google Analytics For Guide <a href="https://github.com/spatie/laravel-analytics#how-to-obtain-the-credentials-to-communicate-with-google-analytics" target="_blank">Visit Official Package Guide</a></span>


<div class="space-4"></div>

<?php if(isset($data['row'])): ?>
    <?php if($data['row']->analytics_json_file): ?>
        <div class="form-group">
            <label class="col-sm-2 control-label">Existing JsonFile</label>
            <div class="col-sm-10">
                <a href="<?php echo e(asset('app/analytics/'.$data['row']->analytics_json_file), false); ?>" target="_blank"><i class="icon-download"></i> <?php echo e($data['row']->analytics_json_file, false); ?></a>
            </div>
        </div>
    <?php endif; ?>
<?php endif; ?>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('json_file', 'Config JsonFile', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::file('json_file'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'json_file'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>



<div class="form-group">
    <?php echo Form::label('recaptcha_site_key', 'Google Captcha Site Key', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('recaptcha_site_key', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'recaptcha_site_key'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="form-group">
    <?php echo Form::label('recaptcha_secret_key', 'Google Captcha Secret', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('recaptcha_secret_key', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'recaptcha_secret_key'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Setup Google Captcha For Secure the Contact Form. <a href="https://www.google.com/recaptcha/intro/v3.html" target="_blank">Visit Official Page To Generate Captcha Secret</a></span>
<div class="space-4"></div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/general/includes/forms/analytics.blade.php ENDPATH**/ ?>