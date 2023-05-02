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
                    <th><?php echo e($panel, false); ?></th>
                    <th>Status</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($data['subject']) && $data['subject']->count() > 0): ?>
                    <?php ($i=1); ?>
                    <?php $__currentLoopData = $data['subject']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="<?php echo e($subject->id, false); ?>" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td><?php echo e($i, false); ?></td>
                            <td>
                                <hr class="hr-4">
                                <table class="table table-striped table-bordered table-hover">
                                    <tr>
                                        <td colspan="3">
                                            <div class="width-100 label label-info label-xlg align-left">
                                                <div class="inline position-relative">
                                                    <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                                                        <span class="white"><?php echo e($subject->code.' - '.$subject->title, false); ?></span>
                                                    </a>
                                                </div>
                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="blue text-uppercase">Credit Hour - </td>
                                        <td><?php echo e($subject->credit_hour, false); ?></td>
                                        <td rowspan="4">
                                            <table class="table table-striped table-bordered table-hover">
                                                <tr>
                                                    <td colspan="2">
                                                        <div class="width-100 label label-info label-xlg">
                                                            <div class="inline position-relative">
                                                                <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                                                                    <span class="white">Marking</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="blue text-uppercase">FM (T) - </td>
                                                    <td> <?php echo e($subject->full_mark_theory, false); ?> </td>
                                                </tr>
                                                <tr>
                                                    <td class="blue text-uppercase">PM (T) - </td>
                                                    <td> <?php echo e($subject->pass_mark_theory, false); ?></td>
                                                </tr>
                                                <tr>
                                                    <td class="blue text-uppercase">FM (P) - </td>
                                                    <td> <?php echo e($subject->full_mark_practical, false); ?> </td>
                                                </tr>
                                                <tr>
                                                    <td class="blue text-uppercase">PM (P) - </td>
                                                    <td>  <?php echo e($subject->pass_mark_practical, false); ?>  </td>
                                                </tr>
                                            </table>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="blue text-uppercase">Subject Type - </td>
                                        <td><?php echo e($subject->sub_type, false); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="blue text-uppercase">Class Type - </td>
                                        <td><?php echo e($subject->class_type, false); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="blue text-uppercase">Teacher/Staff - </td>
                                        <td><?php echo e(ViewHelper::getStaffNameById($subject->staff_id), false); ?></td>
                                    </tr>

                                </table>
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($subject->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                        <?php echo e($subject->status == 'active'?"Active":"In Active", false); ?>

                                        <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php echo e(route('subject.active', ['id' => $subject->id]), false); ?>"><i class="fa fa-check" aria-hidden="true"></i></a>
                                        </li>

                                        <li>
                                            <a href="<?php echo e(route('subject.in-active', ['id' => $subject->id]), false); ?>"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>

                            </td>
                            <td>
                                <div class="action-buttons">
                                    <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => $subject->id]), false); ?>">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>

                                    <a href="<?php echo e(route($base_route.'.delete', ['id' => $subject->id]), false); ?>" class="red bootbox-confirm">
                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <?php ($i++); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php else: ?>
                    <tr>
                        <td colspan="7">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
            <?php echo Form::close(); ?>

        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/academic/subject/includes/table.blade.php ENDPATH**/ ?>