<div id="accordion" class="accordion-style1 panel-group hidden-print">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false">
                    <h3 class="header large lighter blue">
                        <i class="bigger-110 ace-icon fa fa-angle-double-right" data-icon-hide="ace-icon fa fa-angle-double-down" data-icon-show="ace-icon fa fa-angle-double-right"></i>
                        Filter <?php echo e($panel, false); ?>

                        <i class="fa fa-filter" aria-hidden="true"></i>&nbsp;
                    </h3>
                </a>
            </h4>
        </div>

        <div class="panel-collapse collapse" id="collapseOne" aria-expanded="false" style="height: 0px;">
            <div class="panel-body">
                
                <div class="clearfix">
                    <?php echo $__env->make('student.includes.search_form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <hr>
                    <div class="form-group">
                        <?php echo Form::label('pay_date', 'Pay Date', ['class' => 'col-sm-1 control-label']); ?>

                        <div class=" col-sm-3">
                            <div class="input-group ">
                                <?php echo Form::text('pay_date_start', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                                <span class="input-group-addon">
                                    <i class="fa fa-exchange"></i>
                                </span>
                                <?php echo Form::text('pay_date_end', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'pay_date_start'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'pay_date_end'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                        <label class="col-sm-1 control-label">Gateway</label>
                        <div class="col-sm-4">
                            <?php echo Form::select('payment_gateway', $data['payment_gateway'], null, ['class' => 'form-control chosen-select']); ?>

                        </div>
                        <label class="col-sm-1 control-label">Status</label>
                        <div class="col-sm-2">
                            <select class="form-control border-form" name="verify_status" id="cat_id">
                                <option value=""> Select Status </option>
                                <option value="verify" >Verify</option>
                                <option value="not-verified" >Not Verify</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="clearfix form-actions">
                    <div class="align-right">
                        <button class="btn btn-info" type="submit" id="filter-btn">
                            <i class="fa fa-filter bigger-110"></i>
                            Filter
                        </button>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/online-payment/includes/search_form.blade.php ENDPATH**/ ?>