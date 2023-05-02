<div class="btn btn-block btn-primary">Introduction/About Area Setting</div>
<div class="space-8"></div>

<div class="form-group">
    <label class="col-sm-3 control-label" for="status"> Introduction Status </label>
    <div class="col-sm-9">
        <?php echo Form::select('introduction_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'introduction_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('introduction_title', 'Title', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('introduction_title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'introduction_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('introduction_description', 'Description', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::textarea('introduction_description', null, ["placeholder" => "", "class" => "form-control border-form summernote","rows"=>"5"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'introduction_description'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('introduction_button_text', 'Button Text', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('introduction_button_text', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'introduction_button_text'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('introduction_link', 'Button Link', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('introduction_link', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'introduction_link'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/home/includes/forms/about.blade.php ENDPATH**/ ?>