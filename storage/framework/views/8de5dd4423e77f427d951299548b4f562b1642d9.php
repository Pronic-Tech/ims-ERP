<div class="widget-box transparent" id="recent-box">
    <div class="widget-header">
        <h4 class="widget-title lighter smaller">
            <i class="ace-icon fa fa-calendar blue"></i>Attendance
        </h4>

        <div class="widget-toolbar no-border">
            <ul class="nav nav-tabs" id="recent-tab">
                <li class="active">
                    <a data-toggle="tab" href="#booklet-tab">Booklet</a>
                </li>

                
            </ul>
        </div>
    </div>

    <div class="widget-body">
        <div class="widget-main padding-4">
            <div class="tab-content padding-8">
                <div id="booklet-tab" class="tab-pane active">
                    <?php echo $__env->make('dashboard.includes.attendance.booklet', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>

               
            </div>
        </div><!-- /.widget-main -->
    </div><!-- /.widget-body -->
</div><!-- /.widget-box --><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/dashboard/includes/attendance.blade.php ENDPATH**/ ?>