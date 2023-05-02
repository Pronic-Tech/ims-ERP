<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?> List</h4>
        <div class="clearfix">
        <span class="easy-link-menu">
            <a class="btn-success btn-sm bulk-action-btn" attr-action-type="export-excel"><i class="fa fa-file-excel-o" aria-hidden="true"></i>&nbsp;Export</a>
            <a class="btn-primary btn-sm bulk-action-btn" attr-action-type="active"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Active</a>
            <a class="btn-warning btn-sm bulk-action-btn" attr-action-type="in-active"><i class="fa fa-remove" aria-hidden="true"></i>&nbsp;In-Active</a>
            <a class="btn-danger btn-sm bulk-action-btn" attr-action-type="delete"><i class="fa fa-trash" aria-hidden="true"></i>&nbsp;Delete</a>
            <a class="btn-primary btn-sm bulk-action-btn" attr-action-type="create-reset-login"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Create/Reset Login</a>
            <a class="btn-primary btn-sm bulk-action-btn" attr-action-type="create-reset-library-member"><i class="fa fa-book" aria-hidden="true"></i>&nbsp;Create Library Member</a>
        </span>
            <span class="pull-right tableTools-container"></span>
        </div>
        <div class="table-header">
            <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
        </div>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <?php echo Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']); ?>


            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <td class="text-center" colspan="11"><?php echo $data['staff']->appends($data['filter_query'])->links(); ?></td>
                    </tr>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>S.N.</th>
                        
                        <th>Reg.Num</th>
                        <th>Staff Name</th>
                        <th>Phone</th>
                        <th>Designation</th>
                        <th>Qualification</th>
                        <th>Status</th>
                        <th>Action</th>
                        <th>Service Activation</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['staff']) && $data['staff']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['staff']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $staff): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="center first-child">
                                    <label>
                                        <input type="checkbox" name="chkIds[]" value="<?php echo e($staff->id, false); ?>" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo e($i, false); ?></td>
                                
                                <td><a href="<?php echo e(route($base_route.'.view', ['id' => $staff->id]), false); ?>"><?php echo e($staff->reg_no, false); ?></a></td>
                                <td><a href="<?php echo e(route($base_route.'.view', ['id' => $staff->id]), false); ?>"> <?php echo e($staff->first_name.' '.$staff->middle_name.' '. $staff->last_name, false); ?></a></td>
                                <td><a href="tel:<?php echo e($staff->mobile_1, false); ?>"><?php echo e($staff->mobile_1, false); ?></a> </td>
                                <td><?php echo e(ViewHelper::getDesignationId($staff->designation), false); ?></td>
                                <td><?php echo e($staff->qualification, false); ?>

                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($staff->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                            <?php echo e($staff->status == 'active'?"Active":"In Active", false); ?>

                                            <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                        </button>

                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="<?php echo e(route($base_route.'.active', ['id' => $staff->id]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            </li>

                                            <li>
                                                <a href="<?php echo e(route($base_route.'.in-active', ['id' => $staff->id]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                            </li>
                                        </ul>
                                    </div>

                                </td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="<?php echo e(route($base_route.'.view', ['id' => $staff->id]), false); ?>" class="btn btn-primary btn-minier">
                                            <i class="ace-icon fa fa-eye bigger-130"></i>
                                        </a>

                                        <a href="<?php echo e(route($base_route.'.edit', ['id' => $staff->id]), false); ?>" class="btn btn-success btn-minier">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a href="<?php echo e(route($base_route.'.delete', ['id' => $staff->id]), false); ?>" class="btn btn-danger btn-minier bootbox-confirm" >
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>
                                </td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="<?php echo e(route('library.member.quick-membership', ['reg_no' => $staff->reg_no,'user_type' => 2,'status' => 'active',]), false); ?>" class="btn btn-primary btn-minier">
                                            <i class="ace-icon fa fa-book bigger-130"></i>
                                        </a>

                                        <a class="open-ActiveAgain label label-primary" data-toggle="modal"
                                           data-target="#activeAgain"
                                           data-id="<?php echo e($staff->id, false); ?>"
                                           data-reg="<?php echo e($staff->reg_no, false); ?>">
                                         <span>
                                             <i class="ace-icon fa fa-bed bigger-130"></i>
                                         </span>
                                        </a>

                                        <a class="open-TransportActiveAgain label label-primary" data-toggle="modal"
                                           data-target="#TransportActiveAgain"
                                           data-id="<?php echo e($staff->id, false); ?>"
                                           data-reg="<?php echo e($staff->reg_no, false); ?>">
                                         <span>
                                             <i class="ace-icon fa fa-bus bigger-130"></i>
                                         </span>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="11">No <?php echo e($panel, false); ?> data found. Please Filter <?php echo e($panel, false); ?> to show. </td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
            <?php echo Form::close(); ?>

        </div>
        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/staff/includes/table.blade.php ENDPATH**/ ?>