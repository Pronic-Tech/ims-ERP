<?php $__env->startSection('css'); ?>
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
                            Create
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12 ">
                    <?php echo $__env->make('user.includes.commanbuttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <!-- PAGE CONTENT BEGINS -->
                        <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo Form::open(['route' => $base_route.'.store', 'method' => 'POST', 'class' => 'form-horizontal',
                        'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>


                        <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <div class="clearfix form-actions">
                            <div class="align-right">
                                <button class="btn" type="reset">
                                    <i class="fa fa-undo bigger-110"></i>
                                    Reset
                                </button>

                                <button class="btn btn-primary" type="submit" value="Save" name="add_user" id="add-user">
                                    <i class="fa fa-save bigger-110"></i>
                                    Save
                                </button>

                                <button class="btn btn-success" type="submit" value="Save" name="add_user_another" id="add-user-another">
                                    <i class="fa fa-save bigger-110"></i>
                                    <i class="fa fa-plus bigger-110"></i>
                                    Save And Add Another
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

    <?php echo $__env->make('includes.scripts.jquery_validation_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script src="<?php echo e(asset('assets/js/notify.min.js'), false); ?>"></script>
    <script>

        $(document).ready(function () {

            /*function passCheck(){
                alert('Attention!, Please Enter Value Greater Than 0');
                pass = $("#pass").val();
                repeatpass = $("#repeatpass").val();
                if(pass == repeatpass){
                    $.notify("Please, Choose Your Target Year.", "warning");
                }
            }*/

            jqueryValidation(
                {
                    "name": {
                        required: true,
                    },
                    "email": {
                        required: true,
                    },
                    "password": {
                        required: true,
                    },
                    "contact_number": {
                        required: true,
                    },
                    "address": {
                        required: true,
                    }

                },
                {
                    "name": {
                        required: "Please, Add User Name.",
                    },
                    "email": {
                        required: "Please, Add User Email.",
                    },
                    "password": {
                        required: "Please, Add User Password.",
                    },
                    "contact_number": {
                        required: "Please, Add Contact Number.",
                    },
                    "address": {
                        required: "Please, Add Address.",
                    }
                }
            );


        });
        /*'name', 'email', 'password', 'profile_image', 'contact_number', 'address','user_type',*/
    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/add.blade.php ENDPATH**/ ?>