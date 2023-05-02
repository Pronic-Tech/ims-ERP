<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('category_id', 'Category', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::select('category_id', $data['categories'], null, ["placeholder" => "Select Category", "class" => "form-control border-form chosen-select", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'category_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('title', 'Title', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('short_desc', 'Short Description', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('short_desc', null, ["placeholder" => "", "class" => "form-control border-form","rows"=>'2']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'short_desc'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<?php if(isset($data['row'])): ?>
    <div class="space-4"></div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Existing Image</label>
        <div class="col-sm-10">
            <?php if($data['row']->image): ?>
                <img src="<?php echo e(asset('web/'.$folder_name.'/'.$data['row']->image), false); ?>" width="500">
            <?php else: ?>
                <p>No image.</p>
            <?php endif; ?>
        </div>
    </div>
<?php endif; ?>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('main_image', 'Image', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::file('main_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'main_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <span class="help-block"> <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="" data-original-title="Popover on hover">?</span> Recomended Image Size 870px X 439px(72dpi)</span>
    </div>
</div>



<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('detail_desc', 'Detail Description', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('detail_desc', null, ["placeholder" => "Detail Description", "class" => "form-control border-form form-control summernote"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'detail_desc'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('publish_date', 'Publish Date', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('publish_date', null, [ "class" => "form-control border-form date-picker input-mask-date","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'publish_date'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('seo_title', 'SEO Title', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('seo_title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'seo_title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('seo_keywords', 'SEO Keyword', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('seo_keywords', null, ["placeholder" => "", "class" => "form-control border-form form-control"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'seo_keywords'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('seo_description', 'SEO Description', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('seo_description', null, ["placeholder" => "", "class" => "form-control border-form form-control","rows"=>"3"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'seo_description'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <label class="col-sm-2 control-label" for="status"> Status </label>

    <div class="col-sm-10">
        <div class="control-group">

            <div class="radio">
                <label>
                    <?php echo Form::radio('status', 'active', true, ['class' => 'ace']); ?>

                    <span class="lbl"> Active</span>
                </label>
                <label>
                    <?php echo Form::radio('status', 'in-active', false, ['class' => 'ace']); ?>

                    <span class="lbl"> Inactive</span>
                </label>
            </div>
            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>
</div>

<div class="space-4"></div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/blog/includes/form.blade.php ENDPATH**/ ?>