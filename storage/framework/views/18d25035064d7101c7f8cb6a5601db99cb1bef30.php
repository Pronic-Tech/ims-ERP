<div class="btn btn-block btn-primary">Testimonial Setting</div>
<div class="space-8"></div>

<div class="form-group">
    <label class="col-sm-3 control-label" for="status"> Status </label>
    <div class="col-sm-9">
        <?php echo Form::select('testimonial_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'testimonial_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('testimonial_title', 'Title', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('testimonial_title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'testimonial_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/home/includes/forms/testimonial.blade.php ENDPATH**/ ?>