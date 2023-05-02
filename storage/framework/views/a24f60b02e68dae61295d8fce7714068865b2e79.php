<div class="form-group">
    <?php echo Form::label('title', 'Title & Description', ['class' => 'col-sm-4 control-label']); ?>

    <div class="col-sm-8">
        <?php echo Form::text('title', null, ["placeholder" => "", "class" => "form-control border-form upper","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-12">
        <?php echo Form::textarea('description', null, ["placeholder" => "Description text...", "class" => "form-control border-form","id"=>"summernote", "required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'description'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/exam/instruction/includes/form.blade.php ENDPATH**/ ?>