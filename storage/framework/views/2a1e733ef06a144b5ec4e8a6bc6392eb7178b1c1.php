<div class="col-md-4 col-xs-12">
    <h4 class="header large lighter blue"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Edit <?php echo e($panel, false); ?></h4>
<?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!-- PAGE CONTENT BEGINS -->
    <?php echo Form::model($data['row'], ['route' => [$base_route.'.update', $data['row']->id], 'method' => 'POST', 'class' => 'form-horizontal',
                    'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

    <?php echo Form::hidden('id', $data['row']->id); ?>

        <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="clearfix form-actions">
            <div class="col-md-offset-8 col-md-9">
                <button class="btn btn-info" type="submit">
                    <i class="fa fa-save bigger-110"></i>
                Update
                </button>
            </div>
        </div>
        <div class="hr hr-24"></div>
    <?php echo Form::close(); ?>

    <div class="hr hr-18 dotted hr-double"></div>
</div><!-- /.col --><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/student-status/edit.blade.php ENDPATH**/ ?>