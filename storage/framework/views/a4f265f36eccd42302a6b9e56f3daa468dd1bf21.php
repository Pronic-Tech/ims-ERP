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
                            Add Fees
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('account.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                        <?php echo $__env->make('account.fees.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php if(isset($data['row']) && $data['row']->count() > 0): ?>
                            <?php echo $__env->make($base_route.'.includes.edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php else: ?>
                        <!-- PAGE CONTENT BEGINS -->
                            <div class="form-horizontal">
                                <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <div class="hr hr-18 dotted hr-double"></div>
                            </div>
                            <?php echo $__env->make($base_route.'.includes.add', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make($view_path.'.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php endif; ?>
                    </div><!-- /.col -->
                </div><!-- /.row -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
    <?php echo $__env->make('includes.scripts.jquery_validation_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#filter-btn').click(function () {
                <?php echo $__env->make('student.includes.common-script.student_filter_common_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                var facility = $('select[name="facility"]').val();

                if (facility >0) {
                    if (flag) {
                        url += '&facility=' + facility;
                    } else {
                        url += '?facility=' + facility;
                        flag = true;
                    }
                }

                location.href = url;
            });

            $('#load-fee-html').click(function () {

                $.ajax({
                    type: 'POST',
                    url: '<?php echo e(route('account.fees.master.fee-html'), false); ?>',
                    data: {
                        _token: '<?php echo e(csrf_token(), false); ?>',
                    },
                    success: function (response) {
                        var data = $.parseJSON(response);

                        if (data.error) {
                            //$.notify(data.message, "warning");
                        } else {

                            $('#fee_wrapper').append(data.html);
                            $(document).find('option[value="0"]').attr("value", "");
                        }
                    }
                });

            });

            /*Add Fees */
            $('#fee-add-btn').click(function () {
                var fee_head = $('select[name="fee_head[]"]').val();

                if(fee_head !== undefined) {
                    $chkIds = document.getElementsByName('chkIds[]');
                    var $chkCount = 0;
                    $length = $chkIds.length;

                    for(var $i = 0; $i < $length; $i++){
                        if($chkIds[$i].type == 'checkbox' && $chkIds[$i].checked){
                            $chkCount++;
                        }
                    }

                    if($chkCount <= 0){
                        toastr.warning("Please, Select At Least One Student Record.");
                        return false;
                    }

                    var form = $('#fee_add_form');

                }else{
                    toastr.warning('Please, Add At Least One Fee Head.');
                    return false;
                }


            });
            /*Add Fees End*/

           /* $('select.feeHead').change(function() {
                var feeValue = $('select.feeHead').find(':selected').data('feeHeadAmount');
                $('.feeAmount').val(feeValue);
            });*/

        });

        function loadSemesters($this) {
            $.ajax({
                type: 'POST',
                url: '<?php echo e(route('student.find-semester'), false); ?>',
                data: {
                    _token: '<?php echo e(csrf_token(), false); ?>',
                    faculty_id: $this.value
                },
                success: function (response) {
                    var data = $.parseJSON(response);
                    if (data.error) {
                        $.notify(data.message, "warning");
                    } else {
                        $('.semester_select').html('').append('<option value="0">Select Sem./Sec.</option>');
                        $.each(data.semester, function(key,valueObj){
                            $('.semester_select').append('<option value="'+valueObj.id+'">'+valueObj.semester+'</option>');
                        });
                    }
                }
            });

        }

        function setAmount($this){
            $randLinkId = $($this.options[$this.selectedIndex]).attr('data-rand-id');
            $feeHeadAmount = $($this.options[$this.selectedIndex]).attr('data-feeHead-amount');
            console.log($feeHeadAmount);
            document.getElementById($randLinkId).value = $feeHeadAmount;
           //$('input.feeAmount').val($($this.options[$this.selectedIndex]).attr('data-feeHead-amount'));
        }

    </script>
    <?php echo $__env->make('account.fees.master.includes.common-script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/master/add.blade.php ENDPATH**/ ?>