<?php $__env->startSection('css'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->

                    <div class="error-container">
                        <div class="well">
                            <h1 class="grey lighter smaller">
                                <span class="blue bigger-125">
                                    <i class="ace-icon fa fa-sitemap"></i>
                                    404
                                </span>
                                Page Not Found
                            </h1>
                            <hr />
                            <h2><?php echo e($exception->getMessage(), false); ?></h2>
                            <hr />
                            <h3 class="lighter smaller">We looked everywhere but we couldn't find it!</h3>

                            <div>
                                <form class="form-search" method="get" action="http://www.google.com/search">
                                    <span class="input-icon align-middle">
                                        <i class="ace-icon fa fa-search"></i>

                                        <input name="q" type="text" class="search-query" placeholder="Give it a search..." value="404 Page Not Found" />
                                    </span>
                                    <button class="btn btn-sm" type="submit">Go!</button>
                                </form>

                                <div class="space"></div>
                                <h4 class="smaller">Try one of the following:</h4>

                                <ul class="list-unstyled spaced inline bigger-110 margin-15">
                                    <li>
                                        <i class="ace-icon fa fa-hand-o-right blue"></i>
                                        Re-check the url for typos
                                    </li>

                                    <li>
                                        <i class="ace-icon fa fa-hand-o-right blue"></i>
                                        Read the faq
                                    </li>

                                    <li>
                                        <i class="ace-icon fa fa-hand-o-right blue"></i>
                                        Tell us about it
                                    </li>
                                </ul>
                            </div>

                            <hr />
                            <div class="space"></div>

                            <div class="center">
                                <a href="javascript:history.back()" class="btn btn-grey">
                                    <i class="ace-icon fa fa-arrow-left"></i>
                                    Go Back
                                </a>

                                <a href="<?php echo e(route('home'), false); ?>" class="btn btn-primary">
                                    <i class="ace-icon fa fa-tachometer"></i>
                                    Dashboard
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- PAGE CONTENT ENDS -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div>
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>


<?php $__env->startSection('js'); ?>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/errors/404.blade.php ENDPATH**/ ?>