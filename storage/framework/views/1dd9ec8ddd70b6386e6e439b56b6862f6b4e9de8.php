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
                
                <div class="clearfix form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-1 control-label">Year</label>
                        <div class="col-sm-2">
                            <?php echo Form::select('year', $data['years'], null, ['class' => 'form-control', 'onChange' => 'loadSemesters(this);']); ?>

                        </div>

                        <label class="col-sm-1 control-label">Faculty/Class</label>
                        <div class="col-sm-4">
                            <?php echo Form::select('faculty', $data['faculties'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadSemesters(this);']); ?>

                        </div>

                        <label class="col-sm-1 control-label">Sem./Sec.</label>
                        <div class="col-sm-3">
                            <select name="semesters_id" class="form-control semesters_id" onChange="loadSubject(this)" >
                                <option value=""> Select Sem./Sec. </option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Subject</label>
                        <div class="col-sm-4">
                            <select name="subjects_id" class="form-control semester_subject" >
                                <option  value=""> Select Subject </option>
                            </select>
                        </div>

                        <?php echo Form::label('publish_date', 'Publish Date', ['class' => 'col-sm-2 control-label']); ?>

                        <div class=" col-sm-4">
                            <div class="input-group ">
                                <?php echo Form::text('publish_date_start', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                                <span class="input-group-addon">
                                    <i class="fa fa-exchange"></i>
                                </span>
                                <?php echo Form::text('publish_date_end', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

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
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/assignment/includes/search_form.blade.php ENDPATH**/ ?>