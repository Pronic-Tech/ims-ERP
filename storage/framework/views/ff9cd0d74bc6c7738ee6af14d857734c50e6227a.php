<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('css/dashboard.css'), false); ?>" />
    <?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="main-content">
        <div class="breadcrumbs" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- .breadcrumb -->

            <!-- div class="nav-search" id="nav-search">
                <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
                </form>
            </div> --><!-- #nav-search -->
        </div>

        <div class="page-content">
            <div class="space-8"></div>
            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make($view_path.'.includes.indicator', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="space-6"></div>
                    <div class="space-6"></div>
                    <div class="row">
                        <div class="col-sm-12">
                            <?php if(isset($data['datePageVisitorChart'])): ?>
                                <?php echo $__env->make($view_path.'.analytics.includes.dateviews', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php endif; ?>
                        </div>
                        <div class="col-sm-12">
                            <div class="widget-box transparent" id="recent-box">
                                <div class="widget-header">
                                    <h4 class="lighter smaller">
                                        <i class="icon-envelope orange"></i>
                                        Recent Contact Message
                                    </h4>

                                    <div class="widget-toolbar no-border">
                                        <ul class="nav nav-tabs" id="recent-tab">
                                            <li class="active">
                                                <a data-toggle="tab" href="#contact-tab">Contact Us</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main padding-4">
                                        <div class="tab-content padding-8 overflow-visible">
                                            <div id="contact-tab" class="tab-pane active">
                                                <div class="comments">
                                                    <?php if(isset($data['contact_message']) && $data['contact_message']->count() > 0): ?>
                                                        <?php $__currentLoopData = $data['contact_message']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $contact_list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <div class="itemdiv commentdiv">
                                                                <div class="user">
                                                                    <img alt="Bob Doe's Avatar" src="<?php echo e(asset('admin-panel/assets/avatars/user.jpg'), false); ?>" />
                                                                </div>

                                                                <div class="body">
                                                                    <div class="name">
                                                                        <a href="#"><?php echo e($contact_list->name, false); ?></a>
                                                                    </div>

                                                                    <div class="time">
                                                                        <i class="icon-time"></i>
                                                                        <span class="green">

                                                                    <?php echo e($contact_list->created_at->diffForHumans(), false); ?>

                                                                    </span>
                                                                    </div>

                                                                    <div class="text">
                                                                        <i class="icon-quote-left"></i>
                                                                        <?php echo \Illuminate\Support\Str::words($contact_list->message, 15); ?>


                                                                        <?php if($contact_list->view_status == 0 ): ?>
                                                                            <a href="<?php echo e(route($base_route.'.contact-us.view', ['id' => encrypt($contact_list->id)]), false); ?>">
                                                                                <span class="label label-sm label-success">Read Message</span>
                                                                            </a>
                                                                        <?php else: ?>
                                                                            <a href="<?php echo e(route($base_route.'.contact-us.view', ['id' => encrypt($contact_list->id)]), false); ?>">
                                                                                <span class="label label-sm label-warning">Alread Read</span>
                                                                            </a>
                                                                        <?php endif; ?>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        <?php echo $data['contact_message']->links(); ?>

                                                    <?php endif; ?>
                                                </div>

                                                <div class="hr hr-8"></div>

                                                <div class="center">
                                                    <i class="icon-comments-alt icon-2x green"></i>

                                                    &nbsp;
                                                    <a href="<?php echo e(route('web.admin.contact-us'), false); ?>">
                                                        See all Contact Message &nbsp;
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>

                                                <div class="hr hr-double hr8"></div>
                                            </div>
                                        </div>
                                    </div><!-- /widget-main -->
                                </div><!-- /widget-body -->
                            </div><!-- /widget-box -->
                        </div><!-- /span -->
                        <div class="vspace-sm"></div>
                    </div>

                    <div class="space-6"></div>

                <!-- /row -->

                    <!-- PAGE CONTENT ENDS -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div><!-- /.main-content -->
<?php $__env->stopSection(); ?>
<?php $__env->startSection('js'); ?>
    <!-- page specific plugin scripts -->
    <?php if(isset($data['datePageVisitorChart'])): ?>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" charset="utf-8"></script>
         <?php echo $data['datePageVisitorChart']->script(); ?>

    <?php endif; ?>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('web.admin.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/dashboard/index.blade.php ENDPATH**/ ?>