<div class="row">
    <div class="col-md-2">
        <a href="<?php echo e(route('student'), false); ?>" class="easy-link-menu">
            <div class="dash-card card-softred text-xs-center">
                <div class="card-block">
                    <h4 class="card-title">
                        <?php echo e($data['academic_status_count']->sum('total'), false); ?>

                    </h4>
                    <p class="card-text"><i class="ace-icon fa fa-users"></i> Students</p>
                </div>
            </div>
        </a>
    </div>

    <div class="col-md-2">
        <a href="<?php echo e(route('staff'), false); ?>" class="easy-link-menu">
            <div class="dash-card card-sky text-xs-center">
                <div class="card-block">
                    <h4 class="card-title">
                        <?php echo e($data['staff_status']->sum('total'), false); ?>

                    </h4>
                    <p class="card-text"><i class="ace-icon fa fa-user-secret"></i> Staff</p>
                </div>
            </div>
        </a>
    </div>

    <div class="col-md-2">
        <a href="<?php echo e(route('library.book'), false); ?>" class="easy-link-menu">
            <div class="dash-card card-green text-xs-center">
                <div class="card-block">
                    <h4 class="card-title">
                        <?php echo e($data['books_status']->sum('total'), false); ?>

                    </h4>
                    <p class="card-text"><i class="ace-icon fa fa-book"></i> Books</p>
                </div>
            </div>
        </a>
    </div>

    <div class="col-md-2">
        <a href="<?php echo e(route('exam.schedule'), false); ?>" class="easy-link-menu">
            <div class="dash-card card-yellow text-xs-center">
                <div class="card-block">
                    <h4 class="card-title">
                        <?php echo e($data['exams_status'], false); ?>

                    </h4>
                    <p class="card-text"><i class="ace-icon fa fa-line-chart"></i> Exams</p>
                </div>
            </div>
        </a>
    </div>

    <div class="col-md-2">
        <a href="<?php echo e(route('hostel'), false); ?>" class="easy-link-menu">
            <div class="dash-card card-red text-xs-center">
                <div class="card-block">
                    <h4 class="card-title">
                        <?php echo e($data['bed_status']->sum('total'), false); ?>

                    </h4>
                    <p class="card-text"><i class="ace-icon fa fa-bed"></i> HostelBed</p>
                </div>
            </div>
        </a>
    </div>

    <div class="col-md-2">
        <a href="<?php echo e(route('transport.vehicle'), false); ?>" class="easy-link-menu">
            <div class="dash-card card-blue text-xs-center">
                <div class="card-block">
                    <h4 class="card-title">
                        <?php echo e($data['transport_status']->sum('total'), false); ?>

                    </h4>
                    <p class="card-text"><i class="ace-icon fa fa-car"></i> Vehicle</p>
                </div>
            </div>
        </a>
    </div>

</div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/dashboard/includes/buttons.blade.php ENDPATH**/ ?>