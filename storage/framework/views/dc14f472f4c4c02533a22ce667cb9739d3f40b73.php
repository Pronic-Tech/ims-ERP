    <div class="col-xs-12">
        <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- div.table-responsive -->
            <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>

            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace" />
                            <span class="lbl"></span>
                        </label>
                    </th>
                    <th>SN</th>
                    <th>Faculty/Class</th>
                    <th>Sem./Sec.</th>
                    <th>Subject</th>
                    <th>Exam</th>
                    <th>Date/Time</th>
                    <th>Question</th>
                    <th >MarkType</th>
                    <th >PassMark</th>
                    <th >Result</th>
                    <th>Status</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($data['exams']) && $data['exams']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['exams']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $exams): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="<?php echo e(encrypt($exams->id), false); ?>" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td><?php echo e($i, false); ?></td>
                            <td> <?php echo e(ViewHelper::getFacultyTitle( $exams->faculty ), false); ?></td>
                            <td> <?php echo e(ViewHelper::getSemesterTitle( $exams->semester ), false); ?></td>
                            <td><?php echo e(ViewHelper::getSubjectCodeById($exams->subjects_id).' - '.ViewHelper::getSubjectById($exams->subjects_id), false); ?></td>
                            <td><?php echo e($exams->title, false); ?></td>
                            <td class="text-uppercase text-center">
                                <?php echo e($exams->exam_status, false); ?> Time
                                <hr class="hr-4">
                                
                                <?php if(isset($exams->exam_type) && $exams->exam_type=="date_duration"): ?>
                                    <?php echo e($exams->duration, false); ?> Minute
                                    <hr class="hr-2">
                                    <?php echo e($exams->start_date, false); ?>

                                    <hr class="hr-2">
                                    To
                                    <hr class="hr-2">
                                    <?php echo e($exams->end_date, false); ?>


                                <?php elseif(isset($exams->exam_type) && $exams->exam_type=="date_time_duration"): ?>
                                    <?php echo e($exams->duration, false); ?> Minute
                                    <hr class="hr-2">
                                    <?php echo e($exams->start_date_time, false); ?>

                                    <hr class="hr-2">
                                    To
                                    <hr class="hr-2">
                                    <?php echo e($exams->end_date_time, false); ?>

                                <?php else: ?>
                                    <?php echo e($exams->duration, false); ?> Minute
                                <?php endif; ?>
                            </td>
                            <td><?php echo $exams->no_of_question; ?></td>
                            <td class="text-uppercase"><?php echo e($exams->mark_type, false); ?></td>
                            <td><?php echo e($exams->pass_mark, false); ?></td>
                            <td><?php echo e($exams->result_status, false); ?></td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($exams->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                        <?php echo e($exams->status == 'active'?"Active":"In Active", false); ?>

                                        <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php echo e(route($base_route.'.active', ['id' => encrypt($exams->id)]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i></a>
                                        </li>

                                        <li>
                                            <a href="<?php echo e(route($base_route.'.in-active', ['id' => encrypt($exams->id)]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="action-buttons">
                                    <a href="<?php echo e(route($base_route.'.view', ['id' => encrypt($exams->id)]), false); ?>" class="btn btn-primary btn-minier btn-primary">
                                        <i class="ace-icon fa fa-eye bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.edit', ['id' => encrypt($exams->id)]), false); ?>" class="btn btn-primary btn-minier btn-success">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.delete', ['id' => encrypt($exams->id)]), false); ?>" class="btn btn-primary btn-minier btn-danger bootbox-confirm" >
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <?php ($i++); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <tr>
                        <td colspan="11">No <?php echo e($panel, false); ?> data found.</td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
            <?php echo Form::close(); ?>


        </div>
    </div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/exam/online-exam/includes/table.blade.php ENDPATH**/ ?>