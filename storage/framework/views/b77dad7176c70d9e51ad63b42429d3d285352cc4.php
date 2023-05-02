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
                            Add Fees
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('account.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                        <?php echo $__env->make('account.fees.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo Form::open(['route' => 'account.fees.quick-receive.store', 'method' => 'POST', 'class' => 'form-horizontal',
                        'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>


                        <?php echo $__env->make('account.fees.quickreceive.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                    </div><!-- /.col -->
                </div><!-- /.row -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <script src="<?php echo e(asset('assets/js/select2.min.js'), false); ?>"></script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $(document).ready(function () {
            //fee-detail-form
            document.getElementById('fee-detail-form').style.display = 'none';

            /*date*/
           /* var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth()+1; //January is 0!

            var yyyy = today.getFullYear();
            if(dd<10){
                dd='0'+dd;
            }
            if(mm<10){
                mm='0'+mm;
            }
            var today = yyyy +'-'+mm+'-'+ dd;
            $("#date").val( today );*/

        });

        /*Find Student*/
        $('select[name="students_id"]').select2({
            placeholder: 'Search Student...',
            ajax: {
                url: '<?php echo e(route('student.student-name-autocomplete'), false); ?>',
                dataType: 'json',
                delay: 250,
                processResults: function (data) {
                    return {
                        results: data
                    };
                },
                cache: true
            }
        });

        /*Student Verify*/
        $('#load-html-btn').click(function () {
            $('#student_wrapper').empty();
            var students_id = $('select[name="students_id"]').val();
            if (!students_id)
                toastr.warning("Please, Choose Student.", "Warning");
            else {

                $.ajax({
                    type: 'POST',
                    url: '<?php echo e(route('account.student-detail-html'), false); ?>',
                    data: {
                        _token: '<?php echo e(csrf_token(), false); ?>',
                        id: students_id
                    },
                    success: function (response) {
                        var data = $.parseJSON(response);

                        if (data.error) {
                        } else {

                            $('#student_wrapper').append(data.html);
                            document.getElementById('fee-detail-form').style.display = 'block';
                        }
                    }
                });

            }
        });

        /*Fees Verification */
        $('#add-collection').click(function () {
            var totalBalance = parseInt(document.getElementById("receive_amount_temp").value);
            var receiveAmount = parseInt(document.getElementById("receive_amount").value);
            var fineAmount = parseInt(document.getElementById("fine_amount").value);
            var discountAmount = parseInt(document.getElementById("discount_amount").value);
            var date = $('input[name="date"]').val();

            if(!totalBalance){
                toastr.warning('Find and Verify Student.','Warning:');
                return false;
            }

            if(!date){
                toastr.warning('Enter Receive Date.','Warning:');
                return false;
            }

            if(receiveAmount == 0 && fineAmount == 0 && discountAmount == 0){
                toastr.warning('Please Enter Receive/Fine/Discount Amount Greater than 0.','Warning:');
                return false;
            }

            var status = totalBalance - receiveAmount;

            if(status < 0){
                toastr.warning('Student Due Amount is '+totalBalance+'/-. You want to Collect Amount '+receiveAmount+'/- . Greater Than Due Amount.', "Warning");
                return false;
            }

        });

        function verifyStudent() {
            $('#student_wrapper').empty();
            var students_id = $('select[name="students_id"]').val();
            if (!students_id)
                toastr.warning("Please, Choose Student.", "Warning");
            else {

                $.ajax({
                    type: 'POST',
                    url: '<?php echo e(route('account.student-detail-html'), false); ?>',
                    data: {
                        _token: '<?php echo e(csrf_token(), false); ?>',
                        id: students_id
                    },
                    success: function (response) {
                        var data = $.parseJSON(response);

                        if (data.error) {
                        } else {

                            $('#student_wrapper').append(data.html);
                            document.getElementById('fee-detail-form').style.display = 'block';

                        }
                    }
                });
                document.getElementById("receive_amount").value = document.getElementById("receive_amount_temp").value ;

            }
        }

        /*function calculateReceiveAmount() {
            $receiveAmount = parseInt(document.getElementById("receive_amount").value);
            $receiveAmountTemp = parseInt(document.getElementById("receive_amount_temp").value);
            if($receiveAmount > 0) {
                $fineAmount = parseInt(document.getElementById("fine_amount").value);
                $discountAmount = parseInt(document.getElementById("discount_amount").value);
                $setValue = ($receiveAmountTemp - $discountAmount) + $fineAmount;
                document.getElementById("receive_amount").value = $setValue;
            }
        }*/

    </script>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/quickreceive/add.blade.php ENDPATH**/ ?>