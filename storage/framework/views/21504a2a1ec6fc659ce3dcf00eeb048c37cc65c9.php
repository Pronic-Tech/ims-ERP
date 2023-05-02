<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <?php echo $__env->make('layouts.includes.template_setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="page-header">
                    <h1>
                        <?php echo $__env->make($view_path.'.includes.breadcrumb-primary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Edit
                        </small>
                    </h1>
                </div><!-- /.page-header -->
                <div class="col-md-12 col-xs-12">
                <?php echo $__env->make('setting.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <!-- PAGE CONTENT BEGINS -->
                    <?php echo Form::model($data['row'], ['route' => [$base_route.'.update', $data['row']->id], 'method' => 'POST', 'class' => 'form-horizontal',
                                    'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                    <?php echo Form::hidden('id', $data['row']->id); ?>

                    <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="clearfix form-actions">
                        <div class="col-md-12 align-right">
                            <button class="btn" type="reset">
                                <i class="fa fa-undo bigger-110"></i>
                                Reset
                            </button>
                            <button class="btn btn-info" type="submit" id="filter-btn">
                                <i class="fa fa-save bigger-110"></i>
                                Save
                            </button>
                        </div>
                    </div>

                    <?php echo Form::close(); ?>

                    <div class="hr hr-18 dotted hr-double"></div>
                </div><!-- /.col -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <?php echo $__env->make('includes.scripts.summarnote', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/general/edit.blade.php ENDPATH**/ ?>