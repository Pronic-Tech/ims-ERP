<div class="widget-box transparent" id="recent-box">
    <div class="widget-header">
        <h4 class="widget-title lighter smaller">
            <i class="ace-icon fa fa-gift blue"></i>Up Coming Birthday
        </h4>

        <div class="widget-toolbar no-border">
            <ul class="nav nav-tabs" id="recent-tab">
                <li class="active">
                    <a data-toggle="tab" href="#student-birthday-tab">Student Birthday <span class="badge badge-warning"> <?php echo e($data['student_birthday']->count(), false); ?></span></a>
                </li>

                <li>
                    <a data-toggle="tab" href="#staff-birthday-tab">Staff Birthday <span class="badge badge-warning"> <?php echo e($data['staff_birthday']->count(), false); ?></span></a>
                </li>
            </ul>
        </div>
    </div>

    <div class="widget-body">
        <div class="widget-main padding-4">
            <div class="tab-content padding-8">
                <div id="student-birthday-tab" class="tab-pane active">
                    <?php echo $__env->make('dashboard.includes.birthday.student', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>

                <div id="staff-birthday-tab" class="tab-pane">
                    <?php echo $__env->make('dashboard.includes.birthday.staff', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>

            </div>
        </div><!-- /.widget-main -->
    </div><!-- /.widget-body -->
</div><!-- /.widget-box --><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/dashboard/includes/birthday.blade.php ENDPATH**/ ?>