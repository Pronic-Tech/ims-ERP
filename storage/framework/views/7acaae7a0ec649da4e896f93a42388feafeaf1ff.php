<div class="widget-box transparent" id="recent-box">
    <div class="widget-header">
        <h4 class="widget-title lighter smaller">
            <i class="ace-icon fa fa-book blue"></i>Library
        </h4>

        <div class="widget-toolbar no-border">
            <ul class="nav nav-tabs" id="recent-tab">
                <li class="active">
                    <a data-toggle="tab" href="#issue-tab">Book Issue</a>
                </li>

                <li>
                    <a data-toggle="tab" href="#returnOver-tab">
                        Return Period Over <span class="badge badge-warning"> <?php echo e($data['book_return_over']->count(), false); ?></span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="widget-body">
        <div class="widget-main padding-4">
            <div class="tab-content padding-8">
                <div id="issue-tab" class="tab-pane active">
                    <?php echo $__env->make('dashboard.includes.library.bookissue', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>

                <div id="returnOver-tab" class="tab-pane">
                    <?php echo $__env->make('dashboard.includes.library.returnover', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
        </div><!-- /.widget-main -->
    </div><!-- /.widget-body -->
</div><!-- /.widget-box --><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/dashboard/includes/library.blade.php ENDPATH**/ ?>