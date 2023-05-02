<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="<?php echo e(route('web.admin.dashboard'), false); ?>" class="navbar-brand">
                <small>
                    <i class="ace-icon fa fa-globe"></i> &nbsp;
                    <?php if(isset($admin_info->admin_title)): ?>
                        <?php echo e($admin_info->admin_title, false); ?>

                        <strong class="text-capitalize orange2"> WEB CMS </strong>
                    <?php else: ?>
                        Edu Firm
                        <strong class="text-capitalize orange2"> WEB CMS </strong>
                    <?php endif; ?>
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a href="<?php echo e(route('web.home'), false); ?>" target="_blank">
                        <i class="ace-icon fa fa-globe"></i>
                    </a>
                </li>
                <li class="light-blue">
                    <a href="<?php echo e(route('web.admin.help'), false); ?>">
                        <i class="ace-icon fa fa-question"></i>
                    </a>
                </li>


                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <?php if(isset($profileImageSrc) && $profileImageSrc !== null): ?>
                            <img id="avatar" class="nav-user-photo" alt="" src="<?php echo e(asset($profileImageSrc), false); ?>" width="300px" />
                        <?php else: ?>
                            <img class="nav-user-photo" src="<?php echo e(asset('assets/images/avatars/user.jpg'), false); ?>" alt="" />
                        <?php endif; ?>
                        <span class="user-info">
                            <small>Welcome,</small>
                            <?php echo e(isset(Auth::user()->name)?Auth::user()->name:"User", false); ?>

                        </span>
                            <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <?php if(isset($profileImageSrc) && $profileImageSrc !== ''): ?>
                            <li>
                                <img id="avatar" class="img-responsive" alt="" src="<?php echo e(asset($profileImageSrc), false); ?>" width="300px" />
                            </li>
                        <?php endif; ?>
                        <li>
                            <?php if(isset(auth()->user()->id)): ?>
                                <a href="<?php echo e(route('user.view', ['id' => encrypt(auth()->user()->id)]), false); ?>">
                                    <i class="ace-icon fa fa-user"></i>
                                    Profile
                                </a>
                            <?php else: ?>
                                <a href="#">
                                    <i class="ace-icon fa fa-user"></i>
                                    Profile
                                </a>
                            <?php endif; ?>
                        </li>
                        <li class="divider"></li>

                        <li>
                            <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                <i class="icon-off"></i>
                                Logout
                            </a>
                            <form id="logout-form" action="<?php echo e(route('logout'), false); ?>" method="POST" style="display: none;">
                                <input type="hidden" name="_token" value="<?php echo e(csrf_token(), false); ?>">
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-container -->
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/layouts/includes/navbar.blade.php ENDPATH**/ ?>