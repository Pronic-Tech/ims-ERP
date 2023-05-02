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
                    <th>Subject</th>
                    <th>Group</th>
                    <th>Level</th>
                    <th>Question&Options</th>
                    <th >Mark</th>
                    <th >Type</th>
                    <th>Status</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($data['questions']) && $data['questions']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['questions']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $question): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="<?php echo e(encrypt($question->id), false); ?>" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td><?php echo e($i, false); ?></td>
                            <td><?php echo e(ViewHelper::getSubjectCodeById($question->subjects_id).' - '.ViewHelper::getSubjectById($question->subjects_id), false); ?></td>
                            <td><?php echo e(ViewHelper::getQuestionGroupById($question->mcq_question_groups_id), false); ?></td>
                            <td><?php echo e(ViewHelper::getQuestionLevelById($question->mcq_question_levels_id), false); ?></td>
                            <td><?php echo $question->question; ?></td>
                            <td><?php echo e($question->mark, false); ?></td>
                            <td class="text-capitalize"><?php echo e($question->type, false); ?></td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($question->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                        <?php echo e($question->status == 'active'?"Active":"In Active", false); ?>

                                        <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php echo e(route($base_route.'.active', ['id' => encrypt($question->id)]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i></a>
                                        </li>

                                        <li>
                                            <a href="<?php echo e(route($base_route.'.in-active', ['id' => encrypt($question->id)]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="action-buttons">
                                    <a href="<?php echo e(route($base_route.'.view', ['id' => encrypt($question->id)]), false); ?>" class="btn btn-primary btn-minier btn-primary">
                                        <i class="ace-icon fa fa-eye bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.edit', ['id' => encrypt($question->id)]), false); ?>" class="btn btn-primary btn-minier btn-success">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.delete', ['id' => encrypt($question->id)]), false); ?>" class="btn btn-primary btn-minier btn-danger bootbox-confirm" >
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
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/question/question-bank/includes/table.blade.php ENDPATH**/ ?>