<div class="col-md-12 col-xs-12">

<?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!-- PAGE CONTENT BEGINS -->
    <?php echo Form::model($data['row'], ['route' => [$base_route.'.update', $data['row']->id], 'method' => 'POST', 'class' => 'form-horizontal',
                    'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

    <?php echo Form::hidden('id', $data['row']->id); ?>

        <?php echo $__env->make($view_path.'.includes.fee_tr_edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo Form::close(); ?>

    <div class="hr hr-18 dotted hr-double"></div>
</div><!-- /.col --><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/master/includes/edit.blade.php ENDPATH**/ ?>