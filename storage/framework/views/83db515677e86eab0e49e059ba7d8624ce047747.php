<div class="form-horizontal">
    <?php echo Form::open(['route' => $base_route.'.bulk.import', 'method' => 'POST', 'class' => 'form-horizontal',
     'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

    <hr>
    <a href="<?php echo e(asset('assets/csv-template/feehead-import.csv'), false); ?>" target="_blank" class="easy-link-menu"><h3><i class="fa fa-download"></i> CSV Template</h3></a>
    <hr>
    <div class="form-group">
        <?php echo Form::label('file', 'File', ['class' => 'col-sm-2 control-label']); ?>

        <div class="col-sm-4">
            <?php echo Form::file('file', null, ["class" => "form-control border-form", "required"]); ?>

            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'file'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>

    <div class="clearfix form-actions">
        <div class="col-md-12 align-right">
            <button class="btn btn-info" type="submit" id="filter-btn">
                <i class="fa fa-upload"></i>
                Import
            </button>
        </div>
    </div>
    <div class="hr hr-18 dotted hr-double"></div>
    <?php echo Form::close(); ?>

</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/head/includes/import.blade.php ENDPATH**/ ?>