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
                            Detail
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('account.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                        <?php echo $__env->make('account.fees.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="form-horizontal">
                            <?php echo $__env->make($view_path.'.balance.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <div class="hr hr-18 dotted hr-double"></div>
                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->
                <?php echo $__env->make($view_path.'.balance.includes.table', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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

                var village = $('select[name="village"]').val();

                if (village !== '' ) {

                    if (village !== '') {

                        if (flag) {

                            url += '&village=' + village;

                        } else {

                            url += '?village=' + village;

                        }

                    }
                }

                var due_status = $('select[name="due_status"]').val();

                if (due_status !== '' ) {

                    if (due_status !== 'all') {

                        if (flag) {

                            url += '&due_status=' + due_status;

                        } else {

                            url += '?due_status=' + due_status;

                        }

                    }
                }
                location.href = url;
            });

            /*Send Due Reminder*/

            $('table th input:checkbox').on('click' , function(){
                var that = this;
                $(this).closest('table').find('tr > td:first-child input:checkbox')
                    .each(function(){
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass('selected');
                    });

            });

            $('.message-send-btn').click(function () {
                $chkIds = document.getElementsByName('chkIds[]');
                var $chkCount = 0;
                $length = $chkIds.length;

                for(var $i = 0; $i < $length; $i++){
                    if($chkIds[$i].type == 'checkbox' && $chkIds[$i].checked){
                        $chkCount++;
                    }
                }

                if($chkCount <= 0){
                    toastr.info("Please, Select At Least One Record.","Info:");
                    return false;
                }

                var $this = $(this);
                var form = $('#send_reminder_message');

                bootbox.confirm("You are selected "+$chkCount+" Recored. Are you sure, You Want Send Due Reminder Message?", function(result) {
                    if(result) {
                        $('#send_reminder_message').submit();
                    }
                });
            });


            $('.bulk-due-slip').click(function () {
                $chkIds = document.getElementsByName('chkIds[]');
                var $chkCount = 0;
                $length = $chkIds.length;
                student = new Array();

                for(var $i = 0; $i < $length; $i++){
                    if($chkIds[$i].type == 'checkbox' && $chkIds[$i].checked){
                        student[$i] = $chkIds[$i].value;
                        $chkCount++;
                    }
                }

                if ($chkCount <= 0) {
                    toastr.info("Please, Select At Least One Record.", "Info:");
                    return false;
                }

                student = student.filter(function (t) {
                    return (t !== (undefined || null || ''));
                });

                $.ajax({
                    type: 'POST',
                    url: '<?php echo e(route('print-out.fees.bulk-due-detail-slip'), false); ?>',
                    data: {
                        _token: '<?php echo e(csrf_token(), false); ?>',
                        student:student
                    },
                    success: function (response) {
                        toastr.info("ok");
                       /* var w = window.open();
                        $(w.document.body).html(response);*/
                        //var w = window.open();
                        //Append Search unordered list
                        //var newWindow = window.open("", "new window", "width=200, height=100");
                        //var newWindow = window.open("", "new window", "width=900, height=1000");
                        document.write(response);
                        //window.open(document.write(response));
                        //var newWindow = window.open(response, '_blank');
                        //write the data to the document of the newWindow
                        //newWindow.document.write(response);
                        //newWindow.print();
                    }
                });


            });

            $('.short-due-slip').click(function () {
                $chkIds = document.getElementsByName('chkIds[]');
                var $chkCount = 0;
                $length = $chkIds.length;
                student = new Array();

                for(var $i = 0; $i < $length; $i++){
                    if($chkIds[$i].type == 'checkbox' && $chkIds[$i].checked){
                        student[$i] = $chkIds[$i].value;
                        $chkCount++;
                    }
                }

                if ($chkCount <= 0) {
                    toastr.info("Please, Select At Least One Record.", "Info:");
                    return false;
                }

                student = student.filter(function (t) {
                    return (t !== (undefined || null || ''));
                });


                $.ajax({
                    type: 'POST',
                    url: '<?php echo e(route('print-out.fees.bulk-due-slip'), false); ?>',
                    data: {
                        _token: '<?php echo e(csrf_token(), false); ?>',
                        student:student
                    },
                    success: function (response) {
                        toastr.info("ok");
                        /* var w = window.open();
                         $(w.document.body).html(response);*/
                        //var w = window.open();
                        //Append Search unordered list
                        //var newWindow = window.open("", "new window", "width=200, height=100");
                        //var newWindow = window.open("", "new window", "width=900, height=1000");

                        document.write(response);
                        //window.open(document.write(response));
                        //var newWindow = window.open(response, '_blank');

                        //write the data to the document of the newWindow
                        //newWindow.document.write(response);
                        //newWindow.print();
                    }
                });


            });
            /*Due Reminder End*/

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
                            //$(document).find('option[value="0"]').attr("disabled", "disabled");
                            //$.notify(data.message, "success");
                        }
                    }
                });

            });

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
    </script>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.delete_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.bulkaction_confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.dataTable_scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/balance/index.blade.php ENDPATH**/ ?>