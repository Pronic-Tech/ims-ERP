<div class="form-group">
    <?php echo Form::label('title', 'Bed Status', ['class' => 'col-sm-4 control-label']); ?>

    <div class="col-sm-8">
        <?php echo Form::text('title', null, ["placeholder" => "", "class" => "form-control border-form upper","required"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/bed-status/includes/form.blade.php ENDPATH**/ ?>