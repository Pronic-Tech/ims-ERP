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
                            Profile
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12 ">
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <div class="table-responsive">
                            <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th width="20%">Column</th>
                                    <th>Value</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    <td>Profile Image</td>
                                    <td>
                                        <?php if($data['row']->profile_image): ?>
                                            <img src="<?php echo e(asset('images/user/'.$data['row']->profile_image), false); ?>" width="150px">
                                        <?php else: ?>
                                            <p>No image</p>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td><?php echo e($data['row']->name, false); ?></td>
                                </tr>

                                <tr>
                                    <td>Email</td>
                                    <td><?php echo e($data['row']->email, false); ?></td>
                                </tr>

                                <tr>
                                    <td>Address</td>
                                    <td><?php echo e($data['row']->address, false); ?></td>
                                </tr>
                                <tr>
                                    <td>Contact Number</td>
                                    <td><?php echo e($data['row']->contact_number, false); ?></td>
                                </tr>

                                <tr>
                                    <td>Password</td>
                                    <td>
                                        <div id="show-password-change"><button class="btn btn-sm btn-primary">Change Password</button></div>
                                        <div id="change-password">
                                            <div id="cancel-password-change"><button class="btn btn-sm btn-warning">Cancel</button></div>
                                            <hr>
                                            <?php echo Form::model($data['row'], ['route' => ['user.password-change', encrypt($data['row']->id)], 'method' => 'POST', 'class' => 'form-horizontal',
                                                'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>


                                            <?php echo Form::hidden('id', encrypt($data['row']->id)); ?>


                                            <div class="form-group">
                                                <?php echo Form::label('password', 'Password', ['class' => 'col-sm-2 control-label']); ?>

                                                <div class="col-sm-4">
                                                    <?php echo Form::password('password',  ["placeholder" => "", "class" => "form-control border-form","autofocus","id"=>"pass", "required"]); ?>

                                                    <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'password'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                </div>

                                                <?php echo Form::label('confirmPassword', 'Confirm Password', ['class' => 'col-sm-2 control-label']); ?>

                                                <div class="col-sm-4">
                                                    <?php echo Form::password('confirmPassword',  ["placeholder" => "", "class" => "form-control border-form"/*,"onkeyup"=>"passCheck()"*/,"id"=>"repatpass", "required"]); ?>

                                                    <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'confirmPassword'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                </div>
                                            </div>

                                            <div class="clearfix form-actions">
                                                <div class="align-right">
                                                    <button class="btn btn-info" type="submit">
                                                        <i class="icon-ok bigger-110"></i>
                                                        Change
                                                    </button>
                                                </div>
                                            </div>

                                            <div class="hr hr-24"></div>

                                            <?php echo Form::close(); ?>

                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Status</td>
                                    <td><?php echo e($data['row']->status?'Active':'Inactive', false); ?></td>
                                </tr>


                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    
    <script>

        /*
        * $("#hide").click(function(){
  $("p").hide();
});

$("#show").click(function(){
  $("p").show();
});
        * */
        $(document).ready(function () {
            $('#show-password-change').show();
            $('#change-password').hide();

            $('#show-password-change').click(function () {
                $('#show-password-change').hide();
                $('#change-password').show();
            });

            $('#cancel-password-change').click(function () {
                $('#show-password-change').show();
                $('#change-password').hide();
            });

        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/user/view.blade.php ENDPATH**/ ?>