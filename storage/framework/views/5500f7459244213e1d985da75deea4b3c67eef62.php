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
                    <div class="form-horizontal" id="filterDiv">
                        <div class="form-group">
                            <?php echo Form::label('bank_name', 'Bank', ['class' => 'col-sm-2 control-label']); ?>

                            <div class="col-sm-4">
                                <?php echo Form::text('bank_name', null, ["class" => "form-control border-form","autofocus"]); ?>

                            </div>

                            <?php echo Form::label('ac_name', 'Account Name', ['class' => 'col-sm-2 control-label']); ?>

                            <div class="col-sm-4">
                                <?php echo Form::text('ac_name', null, ["class" => "form-control border-form"]); ?>

                            </div>
                        </div>

                        <div class="form-group">
                            <?php echo Form::label('ac_number', 'Account Number', ['class' => 'col-sm-2 control-label']); ?>

                            <div class="col-sm-4">
                                <?php echo Form::text('ac_number', null, ["class" => "form-control border-form"]); ?>

                            </div>

                            <?php echo Form::label('branch', 'Branch', ['class' => 'col-sm-2 control-label']); ?>

                            <div class="col-sm-4">
                                <?php echo Form::text('branch', null, ["class" => "form-control border-form"]); ?>

                            </div>
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
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/bank/includes/search_form.blade.php ENDPATH**/ ?>