<div class="btn btn-block btn-primary">Custom CSS</div>
<hr class="hr-16" />

<div class="form-group">
    <div class="col-sm-12">
        <?php echo Form::textarea('custom_css', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'custom_css'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/general/includes/forms/customcss.blade.php ENDPATH**/ ?>