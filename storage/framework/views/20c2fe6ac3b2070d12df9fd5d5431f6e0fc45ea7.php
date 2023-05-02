<div class="btn btn-block btn-primary">Slider Settings</div>
<div class="space-8"></div>
<div class="form-group">
    <label class="col-sm-3 control-label" for="status"> Status </label>
    <div class="col-sm-9">
        <?php echo Form::select('slider_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'slider_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-3 control-label" for="status"> Caption </label>
    <div class="col-sm-9">
        <?php echo Form::select('slider_caption_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'slider_caption_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-3 control-label" for="status"> Call To Action </label>
    <div class="col-sm-9">
        <?php echo Form::select('slider_call_to_action_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'slider_call_to_action_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('slider_call_to_action_title', 'Call To Action Title', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('slider_call_to_action_title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'slider_call_to_action_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('slider_call_to_action_link', 'Call To Action Link', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('slider_call_to_action_link', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'slider_call_to_action_link'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/home/includes/forms/slider.blade.php ENDPATH**/ ?>