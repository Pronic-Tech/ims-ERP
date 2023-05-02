<div class="btn btn-block btn-primary">Welcome Area Setting</div>
<div class="space-8"></div>

<div class="form-group">
    <label class="col-sm-3 control-label" for="status"> Welcome Status </label>
    <div class="col-sm-9">
        <?php echo Form::select('welcome_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'welcome_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('welcome_title', 'Title', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('welcome_title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'welcome_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('welcome_sub_title', 'Sub Title', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('welcome_sub_title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'welcome_sub_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>


<?php if(isset($data['row']) && $data['row']->welcome_image): ?>
    <div class="form-group">
        <label class="col-sm-3 control-label">Existing Image</label>
        <div class="col-sm-9">
            <img src="<?php echo e(asset('web/'.$folder_name.'/'.$data['row']->welcome_image), false); ?>" width="200">
        </div>
    </div>
<?php endif; ?>


<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('main_image', 'Image', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::file('main_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'main_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Recommended Minimum Image Size 585px X 385px(72dpi)</span>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('welcome_description', 'Description', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::textarea('welcome_description', null, ["placeholder" => "", "class" => "form-control border-form summernote","rows"=>"5"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'welcome_description'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>


<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('welcome_button_text', 'Button Text', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('welcome_button_text', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'welcome_button_text'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('welcome_link', 'Button Link', ['class' => 'col-sm-3 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::text('welcome_link', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'welcome_link'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/settings/home/includes/forms/welcome.blade.php ENDPATH**/ ?>