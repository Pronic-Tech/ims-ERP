<h4 class="header large lighter blue"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?></h4>
<div class="col-sm-3"></div>
<!-- div.table-responsive -->
<table id="staffsTable" class="table table-striped table-bordered table-hover">
    <thead>
        <tr>
            <th>S.N.</th>
            <th> </th>
            <th>Reg.Num</th>
            <th>Staff Name</th>
            <th>
                
                <?php $__currentLoopData = $data['attendance_status']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <label class="pos-rel">
                        <?php echo Form::radio('mark-all', $status->id, false, ['class' => 'ace','id' => 'mark-'.$status->id,"required"]); ?>

                        <span class="lbl"></span> <span class="<?php echo e($status->display_class, false); ?> btn-sm"><?php echo e($status->title, false); ?> All</span>
                    </label>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </th>
            <th></th>
        </tr>
    </thead>
    <tbody id="staff_wrapper">

    </tbody>
</table>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/attendance/staff/includes/staff.blade.php ENDPATH**/ ?>