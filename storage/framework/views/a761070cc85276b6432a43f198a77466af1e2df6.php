<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue text-uppercase">
            <i class="fa fa-list" aria-hidden="true"></i>&nbsp;
            Student Ledger -
            Due: <?php echo e(number_format($data['student']->balance, 2), false); ?> [<?php echo e(ViewHelper::convertNumberToWord($data['student']->balance ), false); ?>]
        </h4>
        <div class="clearfix">
            <a class="label label-primary label-lg bulk-action-btn" target="_blank">
                <i class="fa fa-print"></i> Print Fee Head
            </a>

            <a href="<?php echo e(route('account.fees.due.view', ['id' => $data['student']->id]), false); ?>" target="_blank" class="label label-primary label-lg white">
                <i class="ace-icon fa fa-calculator  align-top bigger-125 icon-on-right"></i>
                Collect Balance
            </a>
            <a type="button" class="label label-primary label-lg whit open-feeMasterDialog" data-toggle="modal"
               data-target="#feeMasterAddModal">
                <i class="fa fa-plus" aria-hidden="true"></i> Add Fees
            </a>

            <a class="label label-primary label-lg white" href="<?php echo e(route('print-out.fees.student-ledger', ['id' => $data['student']->id]), false); ?>" target="_blank">
                Print Ledger
                <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
            </a>
            <a class="label label-warning label-lg white" href="<?php echo e(route('print-out.fees.student-due-detail', ['id' => $data['student']->id]), false); ?>" target="_blank">
                Due Detail
                <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
            </a>
            <a class="label label-warning label-lg white" href="<?php echo e(route('print-out.fees.student-due', ['id' => $data['student']->id]), false); ?>" target="_blank">
                Total Balance
                <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
            </a>
            <a class="label label-success label-lg white" href="<?php echo e(route('print-out.fees.today-receipt-detail', ['id' => $data['student']->id]), false); ?>" target="_blank">
                Detail Receipt: <?php echo e(number_format($data['student']->payment_today, 2), false); ?>/-
                <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
            </a>
            <a class="label label-success label-lg white" href="<?php echo e(route('print-out.fees.today-receipt', ['id' => $data['student']->id]), false); ?>" target="_blank">
                Receipt
                <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
            </a>
            <a class="label label-warning label-lg white receipt-alert" href="<?php echo e(route('info.smsemail.fees-receipt', ['id' => $data['student']->id]), false); ?>">
                <i class="fa fa-send"> </i> Send Receive Alert
            </a>
            <span class="pull-right tableTools-container"></span>
        </div>
        <div class="table-header">
            <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
        </div>
        <!-- div.table-responsive -->
        <form id="bulk_action_form" method="get" action="<?php echo e(route('print-out.fees.selected-master-receipt'), false); ?>">
            <div class="table-responsive">
                <input type="hidden" name="studentId" value="<?php echo e(encrypt($data['student']->id), false); ?>" class="ace" />
                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead class="header">
                        <tr role="row">
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th class="sorting_disabled">Sem./Sec.</th>
                            <th class="sorting_disabled">FeeHead</th>
                            <th class="sorting_disabled">DueDate</th>
                            <th class="sorting_disabled">Amount </th>
                            <th class="sorting_disabled">PayId</th>
                            <th class="sorting_disabled">Mode</th>
                            <th class="sorting_disabled">Date</th>
                            <th class="sorting_disabled">Di </th>
                            <th class="sorting_disabled">Fi </th>
                            <th class="sorting_disabled">Paid </th>
                            <th class="sorting_disabled">Balance</th>
                            <th class="sorting_disabled">Remark</th>
                            <th class="sorting_disabled">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($data['fee_master']) && $data['fee_master']->count() > 0): ?>
                            <?php $__currentLoopData = $data['fee_master']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feemaster): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr class="danger font12 odd" role="row" style="font-weight: 600;">
                                    <td class="center first-child">
                                        <label>
                                            <input type="checkbox" name="chkIds[]" value="<?php echo e($feemaster->id, false); ?>" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td><?php echo e(ViewHelper::getSemesterById($feemaster->semester), false); ?></td>
                                    <td><?php echo e(ViewHelper::getFeeHeadById($feemaster->fee_head), false); ?></td>
                                    <td><?php echo e(\Carbon\Carbon::parse($feemaster->fee_due_date)->format('Y-m-d'), false); ?></td>
                                    <td><?php echo e($feemaster->fee_amount, false); ?></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><?php echo e($feemaster->feeCollect()->sum('discount')?$feemaster->feeCollect()->sum('discount'):"-", false); ?></td>
                                    <td><?php echo e($feemaster->feeCollect()->sum('fine')?$feemaster->feeCollect()->sum('fine'):'-', false); ?></td>
                                    <td><?php echo e($feemaster->feeCollect()->sum('paid_amount')?$feemaster->feeCollect()->sum('paid_amount'):'-', false); ?></td>
                                    <td>
                                        <?php ($net_balance = ($feemaster->fee_amount - ($feemaster->feeCollect()->sum('paid_amount') + $feemaster->feeCollect()->sum('discount')))+ $feemaster->feeCollect()->sum('fine')); ?>
                                        <?php echo e($net_balance?$net_balance:'-', false); ?>

                                    </td>
                                    <td>
                                        <?php if($net_balance == 0): ?>
                                            <span class="label label-success">Paid</span>
                                        <?php elseif($net_balance < 0 ): ?>
                                            <span class="label label-warning">Negative</span>
                                        <?php elseif($net_balance < $feemaster->fee_amount): ?>
                                            <span class="label label-warning">Partial</span>
                                        <?php else: ?>
                                            <span class="label label-danger">Due</span>
                                        <?php endif; ?>
                                    </td>
                                    <td class="hidden-print">
                                        <div class="btn-group pull-right">
                                            <?php if($net_balance > 0): ?>
                                            <button type="button" class="btn btn-xs btn-primary open-AddFeeDialog" data-toggle="modal"
                                                    data-target="#feeCollectionModal"
                                                    data-students-id="<?php echo e($feemaster->students_id, false); ?>"
                                                    data-id="<?php echo e($feemaster->id, false); ?>"
                                                    data-amount="<?php echo e($net_balance, false); ?>"
                                                    data-head="<?php echo e(ViewHelper::getFeeHeadById($feemaster->fee_head), false); ?>"
                                                    data-semester="<?php echo e(ViewHelper::getSemesterById($feemaster->semester), false); ?>">
                                                <i class="fa fa-plus" aria-hidden="true"></i>
                                            </button>
                                            <?php endif; ?>

                                            <a class="btn btn-xs btn-primary" href="<?php echo e(route('print-out.fees.master-receipt', ['id' => $feemaster->id]), false); ?>" target="_blank">
                                                <i class="fa fa-print"></i>
                                            </a>
                                            <?php if($net_balance > 0): ?>
                                                <a class="btn btn-xs btn-success" href="<?php echo e(route('account.fees.master.edit', ['id' => $feemaster->id]), false); ?>" target="_blank">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                            <?php endif; ?>
                                                <a class="btn btn-xs btn-danger bootbox-confirm" href="<?php echo e(route('account.fees.master.delete', ['id' => $feemaster->id]), false); ?>">
                                                    <i class="fa fa-trash"></i>
                                                </a>
                                        </div>
                                    </td>
                                </tr>
                                <?php if(isset($data['fee_collection']) && $data['fee_collection']->count() > 0): ?>
                                    <?php ($i=1); ?>
                                     <?php $__currentLoopData = $data['fee_collection']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fee_collection): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($fee_collection->fee_masters_id == $feemaster->id): ?>

                                            <tr class="white-td even" role="row" >
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td><i class="fa fa-arrow-right"></i></td>
                                                <td>
                                                    <a href="#" data-toggle="popover" class="detail_popover" data-original-title="" title=""> <?php echo e($i.' of '.$fee_collection->fee_masters_id, false); ?></a>
                                                    <div class="fee_detail_popover" style="display: none">
                                                        <p class="text text-danger"><?php echo e($fee_collection->note, false); ?></p>
                                                    </div>
                                                </td>
                                                <td><?php echo e($fee_collection->payment_mode, false); ?></td>
                                                <td> <?php echo e(\Carbon\Carbon::parse($fee_collection->date)->format('Y-m-d'), false); ?></td>
                                                <td><?php echo e($fee_collection->discount?$fee_collection->discount:'-', false); ?></td>
                                                <td><?php echo e($fee_collection->fine?$fee_collection->fine:'-', false); ?></td>
                                                <td><?php echo e($fee_collection->paid_amount?$fee_collection->paid_amount:'-', false); ?></td>
                                                <td></td>
                                                <td><?php echo e(ViewHelper::getUserNameId($fee_collection->created_by), false); ?></td>
                                                <td class="text text-right hidden-print">
                                                    <div class="btn-group pull-right">
                                                        <a class="btn btn-xs btn-danger bootbox-confirm" href="<?php echo e(route($base_route.'.delete', ['id' => $fee_collection->id]), false); ?>">
                                                            <i class="fa fa-trash"> </i>
                                                        </a>
                                                        <a class="btn btn-xs btn-primary" href="<?php echo e(route('print-out.fees.collection', ['id' => $fee_collection->id]), false); ?>" target="_blank">
                                                            <i class="fa fa-print"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php ($i++); ?>
                                        <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </tbody>
                    <tfoot>
                        <tr style="font-size: 14px; background: orangered;color: white;">
                            <td colspan="4">Total</td>
                            <td><?php echo e($data['student']->fee_amount, false); ?></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><?php echo e($data['student']->discount?$data['student']->discount:'-', false); ?></td>
                            <td><?php echo e($data['student']->fine?$data['student']->fine:'-', false); ?></td>
                            <td><?php echo e($data['student']->paid_amount?$data['student']->paid_amount:'-', false); ?></td>
                            <td>
                                <?php echo e($data['student']->balance?$data['student']->balance:'-', false); ?>

                            </td>
                            <td>
                                <?php if($data['student']->balance == 0): ?>
                                    <span class="label label-success">Paid</span>
                                <?php elseif($data['student']->balance < 0 ): ?>
                                    <span class="label label-warning">Negative</span>
                                <?php elseif($data['student']->balance < $data['student']->fee_amount): ?>
                                    <span class="label label-warning">Partial</span>
                                <?php else: ?>
                                    <span class="label label-danger">Due</span>
                                <?php endif; ?>
                            </td>
                            <td class="hdidden-print"> </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </form>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/collection/collect/includes/table.blade.php ENDPATH**/ ?>