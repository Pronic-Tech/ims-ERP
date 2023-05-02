<div class="row">
    <div class="col-xs-12">
        <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
                        <th>S.N.</th>
                        <th>SEM</th>
                        <th>Subjects</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['semester']) && $data['semester']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['semester']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $semester): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="center first-child">
                                    <label>
                                        <input type="checkbox" name="chkIds[]" value="<?php echo e($semester->id, false); ?>" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo e($i++, false); ?></td>
                                <td>
                                    <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td colspan="2">
                                                <div class="width-80 label label-info label-xlg">
                                                    <div class="inline position-relative">
                                                        <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                                                            <span class="white"><?php echo e($semester->semester, false); ?></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Grading Type</td>
                                            <td><?php echo e(ViewHelper::getGradingTitle($semester->gradingType_id), false); ?></td>
                                        </tr>
                                        <tr>
                                            <td>Teacher/Staff</td>
                                            <td><?php echo e(ViewHelper::getStaffNameById($semester->staff_id), false); ?></td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <?php if(isset($semester->subjects)): ?>
                                        <?php ($j=1); ?>
                                        <?php $__currentLoopData = $semester->subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php echo e($j.'. ['.$subject->code.'] '.$subject->title, false); ?>

                                            <hr class="hr-2">
                                            <?php ($j++); ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </td>

                                <td>
                                    <div class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($semester->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                            <?php echo e($semester->status == 'active'?"Active":"In Active", false); ?>

                                            <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                        </button>

                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="<?php echo e(route('semester.active', ['id' => $semester->id]), false); ?>"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            </li>

                                            <li>
                                                <a href="<?php echo e(route('semester.in-active', ['id' => $semester->id]), false); ?>"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                            </li>
                                        </ul>
                                    </div>

                                </td>
                                <td>
                                    <div class="action-buttons">
                                        <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => $semester->id]), false); ?>">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a href="<?php echo e(route($base_route.'.delete', ['id' => $semester->id]), false); ?>" class="red bootbox-confirm">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="6">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
            <?php echo Form::close(); ?>

        </div>
    </div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/semester/includes/table.blade.php ENDPATH**/ ?>