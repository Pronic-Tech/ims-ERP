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
                        <?php echo $__env->make($view_path.'.registration.includes.breadcrumb-primary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Registration
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12 ">
                        <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- PAGE CONTENT BEGINS -->
                        <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <div class="align-right">
                            <a class="<?php echo request()->is('student/import*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('student.import'), false); ?>"><i class="fa fa-upload" aria-hidden="true"></i>&nbsp;Bulk Student Registration</a>
                        </div>
                        <?php echo Form::open(['route' => $base_route.'.register', 'method' => 'POST', 'class' => 'form-horizontal',
                        'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                            <?php echo $__env->make($view_path.'.registration.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <div class="clearfix form-actions">
                                <div class="col-md-12 align-right">
                                    <button class="btn" type="reset">
                                        <i class="fa fa-undo bigger-110"></i>
                                        Reset
                                    </button>

                                    <button class="btn btn-primary" type="submit" value="Save" name="add_student" id="add-student">
                                        <i class="fa fa-save bigger-110"></i>
                                        Register
                                    </button>

                                    <button class="btn btn-success" type="submit" value="Save" name="add_student_another" id="add-student-another">
                                        <i class="fa fa-save bigger-110"></i>
                                        <i class="fa fa-plus bigger-110"></i>
                                        Register And Add Another
                                    </button>
                                </div>
                            </div>

                            <div class="hr hr-24"></div>

                        <?php echo Form::close(); ?>


                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->


<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>

    <!-- page specific plugin scripts -->
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
    <?php echo $__env->make('student.registration.includes.student-comman-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/student/registration/register.blade.php ENDPATH**/ ?>