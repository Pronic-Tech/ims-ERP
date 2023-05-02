<div class="row">
    <div class="col-xs-12">
    <?php echo $__env->make('includes.data_table_header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>

            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <td class="text-center" colspan="9"><?php echo $data['fee_master']->appends($data['filter_query'])->links(); ?></td>
                        </tr>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>S.N.</th>
                            <th>Reg. Num.</th>
                            <th>Name of Student</th>
                            <th>Sem./Sec.</th>
                            <th>Fee Head</th>
                            <th>Due Date</th>
                            <th>Fee Amount</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php if(isset($data['fee_master']) && $data['fee_master']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['fee_master']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fee_master): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="center first-child">
                                    <label>
                                        <input type="checkbox" name="chkIds[]" value="<?php echo e($fee_master->id, false); ?>" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo e($i, false); ?></td>
                                <td> <a href="<?php echo e(route('student.view', ['id' => $fee_master->students_id]), false); ?>"><?php echo e($fee_master->reg_no, false); ?></a></td>
                                <td> <a href="<?php echo e(route('student.view', ['id' => $fee_master->students_id]), false); ?>"><?php echo e($fee_master->first_name.' '.$fee_master->middle_name.' '. $fee_master->last_name, false); ?></a></td>
                                <td> <?php echo e(ViewHelper::getSemesterById($fee_master->semester), false); ?></td>
                                <td><?php echo e(ViewHelper::getFeeHeadById($fee_master->fee_head), false); ?> </td>
                                <td><?php echo e(\Carbon\Carbon::parse($fee_master->fee_due_date)->format('Y-m-d'), false); ?> </td>
                                <td class="text-right"><?php echo e($fee_master->fee_amount, false); ?> </td>
                                <td>
                                    <?php if($fee_master->feeCollect()->count() > 0): ?>
                                        <div class="btn btn-primary btn-minier action-buttons">
                                            <a class="white" href="<?php echo e(route('account.fees.collection.view', ['id' => $fee_master->students_id]), false); ?>">
                                                <i class="ace-icon fa fa-calculator bigger-130"></i>&nbsp;
                                            </a>
                                        </div>
                                    <?php else: ?>
                                        <div class="btn btn-primary btn-minier action-buttons">
                                            <a class="white" href="<?php echo e(route('account.fees.collection.view', ['id' => $fee_master->students_id]), false); ?>">
                                                <i class="ace-icon fa fa-calculator bigger-130"></i>&nbsp;
                                            </a>
                                        </div>

                                        <div class="btn btn-success btn-minier action-buttons">
                                            <a class="white" href="<?php echo e(route($base_route.'.edit', ['id' => $fee_master->id]), false); ?>">
                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                            </a>
                                        </div>
                                        <?php if (\Entrust::ability('super-admin','fees-master-delete')) : ?>
                                            <div class="btn btn-danger btn-minier action-buttons">
                                                <a class="white bootbox-confirm"  href="<?php echo e(route($base_route.'.delete', ['id' => $fee_master->id]), false); ?>">
                                                    <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                                </a>
                                            </div>
                                        <?php endif; // Entrust::ability ?>
                                    <?php endif; ?>
                                </td>

                            </tr>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="10">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                        </tr>
                    <?php endif; ?>
                    </tbody>
                    <tfoot>
                    <tr style="font-size: 14px; background: orangered;color: white;">
                        <td colspan="7" class="text-right">Total</td>
                        <td  class="text-right"><?php echo e($data['fee_master']->sum('fee_amount'), false); ?></td>
                        <td> </td>
                    </tr>
                    </tfoot>
                </table>
        </div>
        <?php echo Form::close(); ?>

    </div>
</div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/master/includes/feemaster_table.blade.php ENDPATH**/ ?>