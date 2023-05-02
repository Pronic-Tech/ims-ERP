
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
                            <th width="70%"><?php echo e($panel, false); ?></th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($data['exam_instructions']) && $data['exam_instructions']->count() > 0): ?>
                            <?php ($i=1); ?>
                            <?php $__currentLoopData = $data['exam_instructions']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $instruction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td class="center first-child">
                                        <label>
                                            <input type="checkbox" name="chkIds[]" value="<?php echo e($instruction->id, false); ?>" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td><?php echo e($i, false); ?></td>
                                    <td>
                                        <div id="faq-list-4" class="panel-group accordion-style1 accordion-style2">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <a href="#<?php echo e($instruction->id, false); ?>" data-parent="#faq-list-4" data-toggle="collapse" class="accordion-toggle collapsed">
                                                        <i class="ace-icon fa fa-arrow-down"></i>                                                        &nbsp;
                                                        <?php echo e($instruction->title, false); ?> - [<?php echo e($instruction->id, false); ?>]
                                                    </a>
                                                </div>

                                                <div class="panel-collapse collapse" id="<?php echo e($instruction->id, false); ?>" style="height: 0px;">
                                                    <div class="panel-body">
                                                        <?php echo $instruction->description; ?>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="btn-group">
                                            <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($instruction->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                                <?php echo e($instruction->status == 'active'?"Active":"In Active", false); ?>

                                                <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                            </button>

                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="<?php echo e(route($base_route.'.active', ['id' => $instruction->id]), false); ?>"><i class="fa fa-check" aria-hidden="true"></i></a>
                                                </li>

                                                <li>
                                                    <a href="<?php echo e(route($base_route.'.in-active', ['id' => $instruction->id]), false); ?>"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                                </li>
                                            </ul>
                                        </div>

                                    </td>
                                    <td>
                                        <div class="action-buttons">
                                            <a class="green" href="<?php echo e(route($base_route.'.edit', ['id' => $instruction->id]), false); ?>">
                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                            </a>

                                            <a href="<?php echo e(route($base_route.'.delete', ['id' => $instruction->id]), false); ?>" class="red bootbox-confirm">
                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <?php ($i++); ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <tr>
                                <td colspan="6">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                            </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            <?php echo Form::close(); ?>

        </div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/exam/instruction/includes/table.blade.php ENDPATH**/ ?>