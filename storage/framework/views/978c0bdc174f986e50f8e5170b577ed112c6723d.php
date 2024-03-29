    <h4 class="header large lighter blue"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Create <?php echo e($panel, false); ?></h4>
    <!-- PAGE CONTENT BEGINS -->
    <div class="tabbable">
        <ul class="nav nav-tabs  padding-18 hidden-print ">
            <li class="active">
                <a data-toggle="tab" href="#create">
                    <i class="green ace-icon fa fa-plus bigger-140"></i>
                    Create
                </a>
            </li>
            <li>
                <a data-toggle="tab" href="#import">
                    <i class="green ace-icon fa fa-file-excel-o bigger-140"></i>
                    Import
                </a>
            </li>

        </ul>

        <div class="tab-content no-border padding-24">
            <div id="create" class="tab-pane in active">
                <?php echo Form::open(['route' => $base_route.'.store', 'method' => 'POST', 'class' => 'form-horizontal',
                    'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                    <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="clearfix form-actions align-right">
                        <div class="col-md-12">
                            <button class="btn btn-default" type="reset">
                                <i class="fa fa-undo bigger-110"></i>
                                Reset
                            </button>
                            <button class="btn btn-info" type="submit">
                                <i class="fa fa-save bigger-110"></i>
                                Submit
                            </button>
                        </div>
                    </div>
                    <div class="hr hr-24"></div>
                <?php echo Form::close(); ?>

            </div><!-- /#AcademicInfo -->

            <div id="import" class="tab-pane">
                <?php echo $__env->make($view_path.'.includes.import', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div><!-- /#home -->
        </div>
    </div>
    <div class="hr hr-18 dotted hr-double"></div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/head/add.blade.php ENDPATH**/ ?>