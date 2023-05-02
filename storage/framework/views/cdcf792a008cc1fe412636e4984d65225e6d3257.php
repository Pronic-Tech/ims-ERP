<div class="form-group">
    <label class="col-sm-2 control-label">
        <i class="fa fa-chart-bar bigger-120 white" aria-hidden="true"></i> Tracking Code's Like:Analytics, Facebook Pixel/ChatWidget
    </label>
    <div class="col-sm-8">
        <?php echo Form::textarea('tracking_code', null, ["class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'tracking_code'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/general/includes/forms/tracking.blade.php ENDPATH**/ ?>