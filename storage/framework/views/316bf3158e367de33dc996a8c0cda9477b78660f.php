<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="<?php echo e(asset('css/dashboard.css'), false); ?>" />
    <?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <?php echo $__env->make('layouts.includes.template_setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="page-header">
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('dashboard.includes.notice', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('dashboard.includes.buttons', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                        
                            <?php if (\Entrust::hasRole(['super-admin','admin','account'])) : ?>
                                <div class="row">
                                    <div class="col-md-10">
                                        <div><?php echo $data['feeSalaryChart']->container(); ?></div>
                                    </div>
                                    <div class="col-md-2">
                                        <div><?php echo $data['feeCompare']->container(); ?></div>
                                    </div>
                                    <div class="col-md-12">
                                        <div><?php echo $data['transactionChart']->container(); ?></div>
                                    </div>
                                </div>
                            <?php endif; // Entrust::hasRole ?>
                        

                        <div class="row">
                            <div class="col-sm-9">
                                <?php if (\Entrust::hasRole(['super-admin','admin','account'])) : ?>
                                    <?php echo $__env->make('dashboard.includes.account', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php endif; // Entrust::hasRole ?>
                                <?php if (\Entrust::hasRole(['super-admin','admin','library'])) : ?>
                                    <?php echo $__env->make('dashboard.includes.library', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php endif; // Entrust::hasRole ?>
                                <?php if (\Entrust::hasRole(['super-admin','admin'])) : ?>
                                <?php echo $__env->make('dashboard.includes.attendance', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php endif; // Entrust::hasRole ?>
                                <?php echo $__env->make('dashboard.includes.birthday', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div><!-- /.col -->
                            <div class="col-sm-3">
                                <?php echo $__env->make('dashboard.includes.summary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div><!-- /.col -->
                            
                        </div>

        </div><!-- /.row -->
        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->
<?php $__env->stopSection(); ?>
<?php $__env->startSection('js'); ?>

<!-- page specific plugin scripts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" charset="utf-8"></script>
<?php echo $data['feeSalaryChart']->script(); ?>

<?php echo $data['feeCompare']->script(); ?>

<?php echo $data['transactionChart']->script(); ?>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/dashboard/index.blade.php ENDPATH**/ ?>