<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?> List</h4>
        <div class="clearfix">
            <span class="pull-right tableTools-container"></span>
        </div>
        <div class="table-header">
            <?php echo e($panel, false); ?>  Record list on table. Filter <?php echo e($panel, false); ?> using the filter.
        </div>
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>S.N.</th>
                    <th>Reg. Num.</th>
                    <th>Join Date</th>
                    <th>Staff Name</th>
                    <th>Designation</th>
                    <th>Father Name</th>
                    <th>Mother Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>BloodGroup</th>
                    <th>Nationality</th>
                    <th>Mother Tongueue</th>
                    <th>Address</th>
                    <th>State</th>
                    <th>Country</th>
                    <th>Temp. Address</th>
                    <th>Temp. State</th>
                    <th>Temp. Country</th>
                    <th>Home Phone</th>
                    <th>Mobile Number</th>
                    <th>Email</th>
                    <th>Qualification</th>
                    <th>Experience</th>
                    <th>Experience Info</th>
                    <th>Other Info</th>
                    <th>Status</th>
                </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['staff']) && $data['staff']->count() > 0): ?>
                        <?php ($i=1); ?>
                        <?php $__currentLoopData = $data['staff']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $staff): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($i, false); ?></td>
                                <td><a href="<?php echo e(route('staff.view', ['id' => $staff->id]), false); ?>"><?php echo e($staff->reg_no, false); ?></a></td>
                                <td><?php echo e(\Carbon\Carbon::parse($staff->join_date)->format('Y-m-d'), false); ?> </td>
                                <td><a href="<?php echo e(route('staff.view', ['id' => $staff->id]), false); ?>"> <?php echo e($staff->first_name.' '.$staff->middle_name.' '. $staff->last_name, false); ?></a></td>
                                <td><?php echo e(ViewHelper::getDesignationId($staff->designation), false); ?></td>
                                <td><?php echo e($staff->father_name, false); ?></td>
                                <td><?php echo e($staff->mother_name, false); ?></td>
                                <td><?php echo e(\Carbon\Carbon::parse($staff->date_of_birth)->format('Y-m-d'), false); ?> </td>
                                <td><?php echo e($staff->gender, false); ?></td>
                                <td><?php echo e($staff->blood_group, false); ?></td>
                                <td><?php echo e($staff->nationality, false); ?></td>
                                <td><?php echo e($staff->mother_tongue, false); ?></td>
                                <td><?php echo e($staff->address, false); ?></td>
                                <td><?php echo e($staff->state, false); ?></td>
                                <td><?php echo e($staff->country, false); ?></td>
                                <td><?php echo e($staff->temp_address, false); ?></td>
                                <td><?php echo e($staff->temp_state, false); ?></td>
                                <td><?php echo e($staff->temp_country, false); ?></td>
                                <td><?php echo e($staff->home_phone, false); ?></td>
                                <td>
                                    <?php if(isset($staff->mobile_2)): ?>
                                    <?php echo e($staff->mobile_1.', '.$staff->mobile_2, false); ?>

                                        <?php else: ?>
                                        <?php echo e($staff->mobile_1, false); ?>

                                    <?php endif; ?>
                                </td>
                                <td><?php echo e($staff->email, false); ?></td>
                                <td><?php echo e($staff->qualification, false); ?></td>
                                <td><?php echo e($staff->experience, false); ?></td>
                                <td><?php echo e($staff->experience_info, false); ?></td>
                                <td><?php echo e($staff->other_info, false); ?></td>
                                <td><?php echo e($staff->status=="active"?"Active":"In-Active", false); ?></td>
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
        </div>
        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/report/staff/includes/table.blade.php ENDPATH**/ ?>