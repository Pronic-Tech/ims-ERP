<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Assignment List</h4>
        <div class="clearfix">

    <span class="easy-link-menu">
        <a class="btn-primary btn-sm bulk-action-btn" attr-action-type="active"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Active</a>
        <a class="btn-warning btn-sm bulk-action-btn" attr-action-type="in-active"><i class="fa fa-remove" aria-hidden="true"></i>&nbsp;In-Active</a>
        <a class="btn-danger btn-sm bulk-action-btn" attr-action-type="delete"><i class="fa fa-trash" aria-hidden="true"></i>&nbsp;Delete</a>
    </span>

            <span class="pull-right tableTools-container"></span>
        </div>
        <div class="table-header">
            <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
        </div>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => 'assignment.bulk-action', 'id' => 'bulk_action_form']); ?>

            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace" />
                            <span class="lbl"></span>
                        </label>
                    </th>
                    <th>S.N.</th>
                    <th>SEM/SEC</th>
                    <th>Subject</th>
                    <th>Question</th>
                    <th>AvailableOn</th>
                    <th>Submit</th>
                    <th>Created By</th>
                    <th>Status</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($data['assignment']) && $data['assignment']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['assignment']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $assignment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="<?php echo e($assignment->id, false); ?>" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td><?php echo e($i, false); ?></td>
                            <td><?php echo e(isset($assignment->semesters_id)?ViewHelper::getSemesterById($assignment->semesters_id):'', false); ?></td>
                            <td><?php echo e(isset($assignment->subjects_id)?ViewHelper::getSubjectById($assignment->subjects_id):'', false); ?></td>
                            <td>
                                <a href="<?php echo e(route('assignment.view', ['id' => encrypt($assignment->id)]), false); ?>">
                                    <?php echo e($assignment->title, false); ?>

                                </a>
                            </td>
                            <td>
                            <?php echo e($assignment->publish_date, false); ?>

                            TO
                            <?php echo e($assignment->end_date, false); ?>

                            
                            </td>
                            <td>
                                <?php echo e($assignment->answers()->count(), false); ?>

                            </td>
                            <td> <?php echo e($assignment->created_by_name, false); ?> </td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($assignment->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                        <?php echo e($assignment->status == 'active'?"Active":"In Active", false); ?>

                                        <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php echo e(route('assignment.active', ['id' => encrypt($assignment->id)]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i></a>
                                        </li>

                                        <li>
                                            <a href="<?php echo e(route('assignment.in-active', ['id' => encrypt($assignment->id)]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="action-buttons">
                                    <a href="<?php echo e(route('assignment.view', ['id' => encrypt($assignment->id)]), false); ?>" class="btn btn-primary btn-minier">
                                        <i class="ace-icon fa fa-eye bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route('assignment.edit', ['id' => encrypt($assignment->id)]), false); ?>" class="btn btn-success btn-minier">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route('assignment.delete', ['id' => encrypt($assignment->id)]), false); ?>" class="btn btn-danger btn-minier bootbox-confirm" >
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>
                            </td>

                        </tr>
                        <?php ($i++); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <tr>
                        <td colspan="12">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
        </div>
        <?php echo Form::close(); ?>

    </div>
</div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/assignment/includes/table.blade.php ENDPATH**/ ?>