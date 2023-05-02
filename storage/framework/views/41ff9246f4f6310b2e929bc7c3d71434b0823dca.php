<div class="form-group">
    <label class="col-sm-2 control-label">TimeZone</label>
    <div class="col-sm-6">
        
        <?php if(isset($data['row'])): ?>
        <select name="time_zones_id" class="form-control chosen-select" id="form-field-select-3" data-placeholder="Choose a Time Zone...">
            <?php $__currentLoopData = $data['timezones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $timezone): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option value="<?php echo e($key, false); ?>" <?php echo e(($data['row']->time_zones_id == $key)?"selected":"", false); ?> ><?php echo e($timezone, false); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
        <?php else: ?>
            <select name="time_zones_id" class="form-control chosen-select" id="form-field-select-3" data-placeholder="Choose a Time Zone...">
                <?php $__currentLoopData = $data['timezones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $timezone): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($key, false); ?>" ><?php echo e($timezone, false); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
        <?php endif; ?>
    </div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/general/includes/forms/timezone.blade.php ENDPATH**/ ?>