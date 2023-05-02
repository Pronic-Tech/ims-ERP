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
                <?php echo Form::open(['route' => $base_route.'.index', 'method' => 'GET', 'class' => 'form-horizontal',
                              'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                <div class="clearfix">
                    <div class="form-horizontal" id="filterDiv">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Faculty/Class</label>
                            <div class="col-sm-5">
                                <?php echo Form::select('faculty', $data['faculties'], null, ['class' => 'form-control chosen-select', 'onChange' => 'loadSemesters(this);']); ?>

                            </div>

                            <label class="col-sm-2 control-label">Sem./Sec.</label>
                            <div class="col-sm-3">
                                <select name="semesters_id" class="form-control semesters_id" onChange="loadSubject(this)" >
                                    <option value=""> Select Sem./Sec. </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Subject</label>
                            <div class="col-sm-3">
                                <select name="subjects_id" class="form-control semester_subject" >
                                    <option value=""> Select Subject </option>
                                </select>
                            </div>
                            <label class="col-sm-1 control-label">Exam</label>
                            <div class="col-sm-6">
                                <?php echo Form::text('title', null, ["class" => "form-control border-form"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                <?php echo Form::textarea('description', null, ["class" => "form-control border-form summernote", "rows"=>"2"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'description'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Instruction</label>
                            <div class="col-sm-3">
                                <?php echo Form::select('mcq_instructions_id', $data['instruction'], null, ['class' => 'form-control subcategory']); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'mcq_instructions_id'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            <label class="col-sm-1 control-label">Exam</label>
                            <div class="col-sm-2">
                                <?php echo Form::select('exam_status', [''=>'Choose Exam Status...','one'=>'One Time','multi'=>'Multiple Time'],null, ["class" => "form-control border-form"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'exam_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            <label class="col-sm-1 control-label">Mark Type</label>
                            <div class="col-sm-1">
                                <?php echo Form::select('mark_type', [''=>'Choose Mark Type...','percent'=>'Percent','fixed'=>'Fixed'],null, ["class" => "form-control border-form"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'mark_type'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            <label class="col-sm-1 control-label">PassMark</label>
                            <div class="col-sm-1">
                                <?php echo Form::text('pass_mark', null, ["class" => "form-control border-form"]); ?>

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Question Type</label>
                            <div class="col-sm-3">
                                <?php echo Form::select('question_type', [''=>'Choose Question Type...','random'=>'Random','fixed'=>'Fixed'],null, ['class' => 'form-control subcategory']); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'question_type'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            <label class="col-sm-2 control-label">Total Question</label>
                            <div class="col-sm-2">
                                <?php echo Form::number('no_of_question', null, ["class" => "form-control border-form"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'no_of_question'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            <label class="col-sm-1 control-label">Result Publish</label>
                            <div class="col-sm-2">
                                
                                <?php echo Form::select('result_status', [''=>'Choose Result Type...','1'=>'Automatic/Immediate','0'=>'Manually'],null, ["class" => "form-control border-form"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'result_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Exam Type</label>
                            <div class="col-sm-2">
                                <?php echo Form::select('exam_type', [''=>'Choose Exam Type...','duration'=>'Duration','date_duration'=>'Date & Duration','date_time_duration'=>'Date,Time & Duration'],null, ["id" => "exam_type","class" => "form-control border-form"]); ?>

                                <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'exam_type'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            <div id="durationDiv">
                                <label for="duration" class="col-sm-1 control-label">
                                    Duration(M)
                                </label>
                                <div class="col-sm-1">
                                    <?php echo Form::text('duration', null, ["id" => "duration","class" => "form-control border-form"]); ?>

                                </div>
                            </div>

                            <div id="startdateDiv">
                                <label for="startdate" class="col-sm-1 control-label">
                                    StartDate
                                </label>
                                <div class="col-sm-2">
                                    <?php echo Form::text('start_date', null, ["id" => "startdate","class" => "form-control border-form"]); ?>

                                </div>
                            </div>

                            <div id="enddateDiv">
                                <label for="enddate" class="col-sm-1 control-label">
                                    EndDate
                                </label>
                                <div class="col-sm-2">
                                    <?php echo Form::text('end_date', null, ["id" => "enddate","class" => "form-control border-form"]); ?>

                                </div>
                            </div>


                            <div id="startdatetimeDiv">
                                <label for="startdatetime" class="col-sm-1 control-label">
                                    StartDateTime
                                </label>
                                <div class="col-sm-2">
                                    <?php echo Form::datetime('start_date_time', null, ["id" => "startdatetime","class" => "form-control border-form"]); ?>

                                    
                                    
                                </div>
                            </div>

                            <div id="enddatetimeDiv">
                                <label for="enddatetime" class="col-sm-1 control-label">
                                    EndDateTime
                                </label>
                                <div class="col-sm-2">
                                    <?php echo Form::datetime('end_date_time', null, ["id" => "enddatetime","class" => "form-control border-form"]); ?>


                                </div>
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="col-sm-2 control-label">Status</label>
                            <div class="col-sm-2">
                                <select class="form-control border-form" name="status" id="cat_id">
                                    <option value="all"> All </option>
                                    <option value="active" >Active</option>
                                    <option value="in-active" >In-Active</option>
                                </select>
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
                <?php echo Form::close(); ?>


            </div>
        </div>
    </div>
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/exam/online-exam/includes/form.blade.php ENDPATH**/ ?>