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
                            Multi Transaction
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('account.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                    <?php echo $__env->make($view_path.'.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('includes.validation_error_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <!-- PAGE CONTENT BEGINS -->
                        <div class="form-horizontal">
                            <?php echo Form::open(['route' => $base_route.'.multi-store', 'method' => 'POST', 'class' => 'form-horizontal',
                    'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                            <div class="hr hr-18 dotted hr-double"></div>
                            <?php echo $__env->make('account.transaction.multi-transaction.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                            <div class="clearfix form-actions">
                                <div class="col-md-12 align-center">
                                    <button class="btn" type="reset">
                                        <i class="fa fa-undo bigger-110"></i>
                                        Reset
                                    </button>
                                    <button class="btn btn-primary" type="submit" value="Save" name="add_transaction" id="add-transaction">
                                        <i class="fa fa-save bigger-110"></i>
                                        Save
                                    </button>

                                    <button class="btn btn-success" type="submit" value="Save" name="add_transaction_another" id="add-transaction-another">
                                        <i class="fa fa-save bigger-110"></i>
                                        <i class="fa fa-plus bigger-110"></i>
                                        Save And Add Another
                                    </button>
                                </div>
                            </div>

                            <div class="hr hr-18 dotted hr-double"></div>
                            <?php echo Form::close(); ?>

                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->


            </div><!-- /.row -->

        </div><!-- /.page-content -->
    </div>
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $(document).ready(function () {
            /*Change Field Value on Capital Letter When Keyup*/
            $(function() {
                $('.upper').keyup(function() {
                    this.value = this.value.toUpperCase();
                });
            });
            /*end capital function*/

        });

        $(document).ready(function () {

            $('#load-transaction-html').click(function () {
                insertNewRow();
            });



            $('#sample-table-1').on('click','tr:last',function(){
               // copyLastRow();
            });

            $('#sample-table-1').on('focus','tr:last',function(e){
                //copyLastRow();

            });

            function copyLastRow(){
                var $tableBody = $('#sample-table-1').find("tbody"),
                    $trLast = $tableBody.find("tr:last"),
                    $trNew = $trLast.clone();
                $trLast.after($trNew);

            }

            function insertNewRow(){
                $.ajax({
                    type: 'POST',
                    url: '<?php echo e(route('account.multi-transaction.tr-html'), false); ?>',
                    data: {
                        _token: '<?php echo e(csrf_token(), false); ?>',
                    },
                    success: function (response) {
                        var data = $.parseJSON(response);

                        if (data.error) {
                            //$.notify(data.message, "warning");
                        } else {

                            $('#transaction_wrapper').append(data.html);
                            $(document).find('option[value="0"]').attr("value", "");
                        }
                    }
                });
            }

        });

    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/multi-transaction/add.blade.php ENDPATH**/ ?>