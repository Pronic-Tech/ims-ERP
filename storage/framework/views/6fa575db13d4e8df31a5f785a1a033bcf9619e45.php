<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>
            <?php if(isset($data['general_setting']->institute)): ?>
                <?php echo e($data['general_setting']->institute, false); ?>

            <?php else: ?>
                Unlimited Edu Firm
            <?php endif; ?>
        </title>

        <meta name="description" content="Unlimited Edu Firm is School & College Information Management System. School or College can manage student & staff detail with the different helpful module. Front Desk, Student & Staff, Account, Library, Hostel, Attendance, Transport, Assignment, Download, Zoom Meeting, SMS & Email Alert, Online Payment Gateway, User and Role manage with powerful ACL are the Key features of EduFirm." />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <?php if(isset($data['general_setting']->favicon)): ?>
            <link rel="icon" href="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$data['general_setting']->favicon ), false); ?>" type="image/x-icon" />
        <?php endif; ?>

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/bootstrap.min.css'), false); ?>" />
        <link rel="stylesheet" href="<?php echo e(asset('assets/font-awesome/4.5.0/css/font-awesome.min.css'), false); ?>" />

        <!-- text fonts -->
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/fonts.googleapis.com.css'), false); ?>" />

        <!-- ace styles -->
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace.min.css'), false); ?>" />

        <!--[if lte IE 9]>
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-part2.min.css'), false); ?>" />
        <![endif]-->
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-rtl.min.css'), false); ?>" />

        <!--[if lte IE 9]>
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-ie.min.css'), false); ?>" />
        <![endif]-->

        <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

        <!--[if lte IE 8]>
        <script src="<?php echo e(asset('assets/js/html5shiv.min.js'), false); ?>"></script>
        <script src="<?php echo e(asset('assets/js/respond.min.js'), false); ?>"></script>
        <![endif]-->

        <style>
            .floating-menu {
                font-family: sans-serif;
                /*background: yellowgreen;*/
                background: #5090C1;
                border-top: 2px solid #597597;
                padding: 5px;;
                width: 200px;
                z-index: 100;
                position: fixed;
                bottom: 100px;
                right: 0px;
            }

            .floating-menu a{
                font-size: 1.2em;
                display: block;
                margin: 0 0.5em;
                color: white;
                padding-bottom: 3px;
                border-bottom: 1px #7a7a7a solid;
            }

            .floating-menu h3 {
                font-size: 1.8em;
                display: block;
                margin: 0 0.5em;
                color: #fff703;
            }

            @media  screen and (max-width:800px){
                .floating-menu {
                    display: none;
                }
            }
        </style>
    </head>

    <body class="login-layout blur-login">
        <div class="main-container">
        <div class="main-content">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="login-container">
                        <div class="center" style="margin-top: 30%;">
                            <h1>
                                <?php if(isset($data['general_setting']->logo)): ?>
                                    <a href="<?php echo e(isset($data['general_setting']->website)?$data['general_setting']->website:'#', false); ?>">
                                        <img id="avatar"  src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$data['general_setting']->logo), false); ?>" width="200" >
                                    </a>
                                <?php else: ?>
                                    <i class="ace-icon fa fa-3x fa-graduation-cap blue" ></i>
                                    <br>
                                    <?php if(isset($data['general_setting']->institute)): ?>
                                        <span class="white" id="id-text2"><?php echo e($data['general_setting']->institute, false); ?></span>
                                    <?php else: ?>
                                        <span class="red">UNLIMITED | </span>
                                        <span class="white" id="id-text2">Edu Firm</span>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <br>
                                <span class="green" style="font-size: 17pt;">
                                Information Management System
                            </span>
                            </h1>
                        </div>

                        <div class="space-6"></div>
                        <?php echo $__env->make('includes.flash_messages', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        <div class="position-relative">
                            <div id="login-box" class="login-box visible widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header blue lighter bigger">
                                            <i class="ace-icon fa fa-users red"></i>
                                            Please Enter Your Information
                                        </h4>

                                        <div class="space-6"></div>

                                        <form method="POST" action="<?php echo e(route('login'), false); ?>">
                                            <?php echo e(csrf_field(), false); ?>

                                            <?php if(session()->has('login_error')): ?>
                                                <div class="alert alert-success">
                                                    <?php echo e(session()->get('login_error'), false); ?>

                                                </div>
                                            <?php endif; ?>
                                            <?php if(session('status')): ?>
                                                <div class="alert alert-success">
                                                    <?php echo e(session('status'), false); ?>

                                                </div>
                                            <?php endif; ?>
                                            <fieldset>
                                                <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" name="email" value="<?php echo e(old('email'), false); ?>" required autofocus>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                                        <?php if($errors->has('email')): ?>
                                                            <span class="help-block">
                                                            <strong><?php echo e($errors->first('email'), false); ?></strong>
                                                        </span>
                                                    <?php endif; ?>
                                                </label>

                                                <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="password" type="password" class="form-control" name="password" required>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                                    <?php if($errors->has('password')): ?>
                                                        <span class="help-block">
                                                        <strong><?php echo e($errors->first('password'), false); ?></strong>
                                                    </span>
                                                    <?php endif; ?>
                                                </label>

                                                <div class="space"></div>

                                                <div class="clearfix">
                                                    <label class="inline">
                                                        <input type="checkbox" class="ace" />
                                                        <span class="lbl"> Remember Me</span>
                                                    </label>

                                                    <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                        <i class="ace-icon fa fa-sign-in"></i>
                                                        <span class="bigger-110">Login</span>
                                                    </button>
                                                </div>

                                                <div class="space-4"></div>
                                            </fieldset>
                                        </form>
                                        
                                    </div><!-- /.widget-main -->

                                    <div class="toolbar clearfix">
                                        <div>
                                            
                                            <?php if($data['general_setting']->public_registration == 1): ?>
                                                <a href="<?php echo e(route('online-registration.registration'), false); ?>" class="user-signup-link">
                                                    <i class="ace-icon fa fa-arrow-left"></i>
                                                    Student Register
                                                </a>
                                            <?php endif; ?>
                                        </div>
                                        <div>
                                            <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                                I forgot my password
                                                <i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>

                                </div><!-- /.widget-body -->
                            </div><!-- /.login-box -->

                            <div id="forgot-box" class="forgot-box widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header red lighter bigger">
                                            <i class="ace-icon fa fa-key"></i>
                                            Retrieve Password
                                        </h4>

                                        <div class="space-6"></div>
                                        <p>
                                            Enter your email and to receive instructions
                                        </p>

                                        <?php if(session('status')): ?>
                                            <div class="alert alert-success">
                                                <?php echo e(session('status'), false); ?>

                                            </div>
                                        <?php endif; ?>

                                        <form class="form-horizontal" method="POST" action="<?php echo e(route('password.email'), false); ?>">
                                            <?php echo e(csrf_field(), false); ?>

                                            <fieldset>
                                                <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input id="email" type="email" class="form-control" name="email" value="<?php echo e(old('email'), false); ?>" placeholder="Email"  required>
                                                    <i class="ace-icon fa fa-envelope"></i>
                                                </span>
                                                    <?php if($errors->has('email')): ?>
                                                        <span class="help-block">
                                                        <strong><?php echo e($errors->first('email'), false); ?></strong>
                                                    </span>
                                                    <?php endif; ?>
                                                </label>

                                                <div class="clearfix">
                                                    <button type="submit" class="width-35 pull-right btn btn-sm btn-danger">
                                                        <i class="ace-icon fa fa-lightbulb-o"></i>
                                                        <span class="bigger-110">Send Me!</span>
                                                    </button>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div><!-- /.widget-main -->

                                    <div class="toolbar center">
                                        <a href="#" data-target="#login-box" class="back-to-login-link">
                                            Back to login
                                            <i class="ace-icon fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- /.widget-body -->
                            </div><!-- /.forgot-box -->

                            <div id="signup-box" class="signup-box widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header green lighter bigger">
                                            <i class="ace-icon fa fa-users blue"></i>
                                            New User Registration
                                        </h4>

                                        <div class="space-6"></div>
                                        <p> Enter your details to begin: </p>

                                        <form>
                                            <fieldset>
                                                <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="email" class="form-control" placeholder="Email" />
                                                    <i class="ace-icon fa fa-envelope"></i>
                                                </span>
                                                </label>

                                                <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" class="form-control" placeholder="Username" />
                                                    <i class="ace-icon fa fa-user"></i>
                                                </span>
                                                </label>

                                                <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" class="form-control" placeholder="Password" />
                                                    <i class="ace-icon fa fa-lock"></i>
                                                </span>
                                                </label>

                                                <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" class="form-control" placeholder="Repeat password" />
                                                    <i class="ace-icon fa fa-retweet"></i>
                                                </span>
                                                </label>

                                                <label class="block">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl">
                                                    I accept the
                                                    <a href="#">User Agreement</a>
                                                </span>
                                                </label>

                                                <div class="space-24"></div>

                                                <div class="clearfix">
                                                    <button type="reset" class="width-30 pull-left btn btn-sm">
                                                        <i class="ace-icon fa fa-refresh"></i>
                                                        <span class="bigger-110">Reset</span>
                                                    </button>

                                                    <button type="button" class="width-65 pull-right btn btn-sm btn-success">
                                                        <span class="bigger-110">Register</span>
                                                        <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                    </button>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>

                                    <div class="toolbar center">
                                        <a href="#" data-target="#login-box" class="back-to-login-link">
                                            <i class="ace-icon fa fa-arrow-left"></i>
                                            Back to login
                                        </a>
                                    </div>
                                </div><!-- /.widget-body -->
                            </div><!-- /.signup-box -->
                        </div><!-- /.position-relative -->
                        <h5 class="blue text-center" id="id-company-text">
                            <?php if(isset($data['general_setting']->copyright)): ?>
                                <?php echo $data['general_setting']->copyright; ?>

                            <?php else: ?>
                                <a href="http://businesswithtechnology.com" target="_blank">©BusinessWithTechnology</a>
                            <?php endif; ?>
                        </h5>

                        <div class="navbar-fixed-top align-right">
                            <br />
                            &nbsp;
                            <a id="btn-login-dark" href="#">Dark</a>
                            &nbsp;
                            <span class="blue">/</span>
                            &nbsp;
                            <a id="btn-login-blur" href="#">Blur</a>
                            &nbsp;
                            <span class="blue">/</span>
                            &nbsp;
                            <a id="btn-login-light" href="#">Light</a>

                        </div>
                    </div>
                </div><!-- /.col -->
            </div><!-- /.row -->
            <?php if($data['general_setting']->quick_menu == 1): ?>
                <div class="toolbar clearfix">
                    <nav class="floating-menu">
                        <h3>Quick Menu</h3>
                        <?php if($data['general_setting']->public_registration == 1): ?>
                            <a href="<?php echo e(route('online-registration.registration'), false); ?>">Student Registration</a>
                        <?php endif; ?>
                    </nav>
                </div>
            <?php endif; ?>
        </div><!-- /.main-content -->
    </div><!-- /.main-container -->

        <!-- basic scripts -->

        <!--[if !IE]> -->
        <script src="<?php echo e(asset('assets/js/jquery-2.1.4.min.js'), false); ?>"></script>

        <!-- <![endif]-->

        <!--[if IE]>
        <script src="<?php echo e(asset('assets/js/jquery-1.11.3.min.js'), false); ?>"></script>
        <![endif]-->
        <script type="text/javascript">
            if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo e(asset('assets/js/jquery.mobile.custom.min.js'), false); ?>'>"+"<"+"/script>");
        </script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function($) {
                $(document).on('click', '.toolbar a[data-target]', function(e) {
                    e.preventDefault();
                    var target = $(this).data('target');
                    $('.widget-box.visible').removeClass('visible');//hide others
                    $(target).addClass('visible');//show target
                });
            });



            //you don't need this, just used for changing background
            jQuery(function($) {
                $('#btn-login-dark').on('click', function(e) {
                    $('body').attr('class', 'login-layout');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-light').on('click', function(e) {
                    $('body').attr('class', 'login-layout light-login');
                    $('#id-text2').attr('class', 'grey');
                    $('#id-company-text').attr('class', 'blue');

                    e.preventDefault();
                });
                $('#btn-login-blur').on('click', function(e) {
                    $('body').attr('class', 'login-layout blur-login');
                    $('#id-text2').attr('class', 'white');
                    $('#id-company-text').attr('class', 'light-blue');

                    e.preventDefault();
                });

            });
        </script>
    <?php echo $__env->make('includes.scripts.tracking', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>;
    </body>
</html>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/login/login.blade.php ENDPATH**/ ?>