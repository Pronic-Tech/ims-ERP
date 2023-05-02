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
                        <?php echo $__env->make($view_path.'.issue.includes.breadcrumb-primary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Add Fees
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <?php echo $__env->make('certificate.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="col-xs-12 ">
                        
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <h4 class="header large lighter blue"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Search & Verify Student Before Issue Certificate</h4>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <?php echo Form::select('students_id', [], null, ["placeholder" => "Type Student Name | Reg.No. | Mobile | Email...", "class" => "col-xs-12 col-sm-12", "style" => "width: 100%;"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'students_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                <hr>
                                <div class="align-right">
                                    <button type="button" class="btn btn-sm btn-primary" id="load-html-btn">
                                        <i class="fa fa-user bigger-120"></i> Verify Student
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="space-4"></div>

                        <?php echo $__env->make('certificate.issue.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


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
                        url: '<?php echo e(route('certificate.student-detail-html'), false); ?>',
                        data: {
                            _token: '<?php echo e(csrf_token(), false); ?>',
                            id: students_id
                        },
                        success: function (response) {
                            var data = $.parseJSON(response);

                            if (data.error) {
                            } else {

                                $('#student_wrapper').append(data.html);
                            }
                        }
                    });

                }
            });


        });

    </script>
    <?php echo $__env->make('includes.scripts.inputMask_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('includes.scripts.datepicker_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/certificate/issue/add.blade.php ENDPATH**/ ?>