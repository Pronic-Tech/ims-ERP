<div id="accordion" class="accordion-style1 panel-group hidden-print">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false">
                    <h3 class="header large lighter blue">
                        <i class="bigger-110 ace-icon fa fa-angle-double-right" data-icon-hide="ace-icon fa fa-angle-double-down" data-icon-show="ace-icon fa fa-angle-double-right"></i>
                        Filter Student with Total Balance & Over Due
                        <i class="fa fa-filter" aria-hidden="true"></i>&nbsp;
                    </h3>
                </a>
            </h4>
        </div>

        <div class="panel-collapse collapse" id="collapseOne" aria-expanded="false" style="height: 0px;">
            <div class="panel-body">
                
                <div class="clearfix">
                    <?php echo $__env->make('student.includes.search_form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Address</label>
                        <div class="col-sm-4">
                            <?php echo Form::select('village', $data['village'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadSemesters(this);']); ?>

                        </div>

                        <label class="col-sm-1 control-label">DueStatus</label>
                        <div class="col-sm-2">
                            <select class="form-control border-form" name="due_status" id="cat_id">
                                <option value="all"> Total Balance </option>
                                <option value="overdue" >Get Over Due Only</option>
                            </select>
                        </div>

                        <label class="col-sm-1 control-label">Layout</label>
                        <div class="col-sm-2">
                            <select class="form-control border-form" name="layout" id="cat_id">
                                <option value="feeHead"> With Fee Head</option>
                                <option value="" selected>Balance Only</option>
                            </select>
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
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/report/balance-fee/includes/search_form.blade.php ENDPATH**/ ?>