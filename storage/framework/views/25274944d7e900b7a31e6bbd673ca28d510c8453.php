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
                    <div class="form-group">
                        <?php echo Form::label('reg_no', 'REG. NO.', ['class' => 'col-sm-1 control-label']); ?>

                        <div class="col-sm-2">
                            <?php echo Form::text('reg_no', null, ["placeholder" => "", "class" => "form-control border-form input-mask-registration", "autofocus"]); ?>

                            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'reg_no'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>

                        <?php echo Form::label('reg_date', 'Reg. Date', ['class' => 'col-sm-1 control-label']); ?>

                        <div class=" col-sm-3">
                            <div class="input-group ">
                                <?php echo Form::text('reg_start_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                                <span class="input-group-addon">
                <i class="fa fa-exchange"></i>
            </span>
                                <?php echo Form::text('reg_end_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'reg_start_date'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'reg_end_date'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>

                        <label class="col-sm-1 control-label">Status</label>
                        <div class="col-sm-2">
                            <?php echo Form::select('academic_status', $data['academic_status'], null, ['class' => 'form-control', 'onChange' => 'loadSemesters(this);']); ?>

                        </div>
                        <div class="col-sm-2">
                            <select class="form-control border-form" name="status" id="cat_id">
                                <option value="all"> Select Status </option>
                                <option value="active" >Active</option>
                                <option value="in-active" >In-Active</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Faculty/Class</label>
                        <div class="col-sm-4">
                            <?php echo Form::select('faculty', $data['faculties'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadSemesters(this);']); ?>

                        </div>

                        <label class="col-sm-1 control-label">Sem./Sec.</label>
                        <div class="col-sm-2">
                            <select name="semester_select" class="form-control semester_select" onChange ="loadSubject(this)">
                                <option value="0"> Select Sem./Sec. </option>
                            </select>
                        </div>

                        <label class="col-sm-1 control-label">Session</label>
                        <div class="col-sm-2">
                            <?php echo Form::select('batch', $data['batch'], null, ['class' => 'form-control']); ?>

                        </div>
                    </div>

                    <div class="form-group">
                        <?php echo Form::label('religion', 'Religion', ['class' => 'col-sm-1 control-label']); ?>

                        <div class="col-sm-2">
                            <?php echo Form::text('religion', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

                            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'religion'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>

                        <?php echo Form::label('caste', 'Caste', ['class' => 'col-sm-1 control-label']); ?>

                        <div class="col-sm-2">
                            <?php echo Form::text('caste', null, ["class" => "form-control border-form"]); ?>

                            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'caste'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>

                        <?php echo Form::label('nationality', 'Nationality', ['class' => 'col-sm-1 control-label']); ?>

                        <div class="col-sm-2">
                            <?php echo Form::text('nationality', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>

                            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'nationality'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>

                        <?php echo Form::label('mother_tongue', 'Mot.Tongue', ['class' => 'col-sm-1 control-label']); ?>

                        <div class="col-sm-2">
                            <?php echo Form::text('mother_tongue', null, ["class" => "form-control border-form"]); ?>

                            <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'mother_tongue'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-1 control-label">Year</label>
                        <div class="col-sm-1">
                            <?php echo Form::select('year', $data['years'], null, ['class' => 'form-control']); ?>


                        </div>

                        <label class="col-sm-1 control-label">Month</label>
                        <div class="col-sm-2">
                            <?php echo Form::select('month', $data['months'], null, ['class' => 'form-control']); ?>

                        </div>


                        <label class="col-sm-1 control-label">Subject</label>
                        <div class="col-sm-4">
                            <select name="sem_subject" class="form-control sem_subject">
                                <option> Select Subject </option>
                            </select>
                        </div>

                        <label class="col-sm-1 control-label">Type</label>
                        <div class="col-sm-1">
                            <select name="attendance_type" class="form-control" onChange ="loadStudent(this)">
                                <option value="0"> Select Type </option>
                                <option value="1"> Theory </option>
                                <option value="2"> Practical </option>
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
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/attendance/subject/includes/search_form.blade.php ENDPATH**/ ?>