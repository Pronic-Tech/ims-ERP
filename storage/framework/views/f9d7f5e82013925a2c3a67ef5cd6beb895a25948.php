<!doctype html>
<html lang="<?php echo e(app()->getLocale(), false); ?>">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>
            <?php if(isset($generalSetting->institute)): ?>
                <?php echo e($generalSetting->institute, false); ?>

            <?php else: ?>
                UNLIMITED Edu Firm
            <?php endif; ?>
        </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="<?php echo e(asset('assets/font-awesome/4.5.0/css/font-awesome.min.css'), false); ?>" />
        <link rel="stylesheet" href="<?php echo e(asset('assets/css/hover-min.css'), false); ?>" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

        </style>


    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <?php if(Route::has('login')): ?>
                <div class="top-right links">
                    <?php if(auth()->guard()->check()): ?>
                        
                        <a href="<?php echo e(route('dashboard'), false); ?>" class="hvr-grow">Dashboard</a>
                        <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="hvr-grow">
                            <i class="ace-icon fa fa-power-off"></i>
                            Logout
                        </a>
                        <form id="logout-form" action="<?php echo e(route('logout'), false); ?>" method="POST" style="display: none;">
                            <input type="hidden" name="_token" value="<?php echo e(csrf_token(), false); ?>">
                        </form>

                    <?php else: ?>
                        <a href="<?php echo e(route('login'), false); ?>" class="hvr-grow">Login</a>
                        <?php if($generalSetting->public_registration == 1): ?>
                            <a href="<?php echo e(route('online-registration.registration'), false); ?>" class="user-signup-link online-registration-link hvr-sweep-to-bottom">
                                Register As Student
                            </a>
                        <?php endif; ?>
                       
                    <?php endif; ?>
                        
                </div>
            <?php endif; ?>

            <div class="content">
                <?php if(isset($data['general_setting']->logo)): ?>
                    <img id="avatar"  src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$data['general_setting']->logo), false); ?>" width="200" >
                <?php endif; ?>
                <div class="title m-b-md">
                    <?php echo e(isset(auth()->user()->name)?'Welcome, '.auth()->user()->name:"Welcome to ", false); ?>

                </div>
                <div class="title m-b-md" style="font-weight: 600;">
                    <?php if(isset($generalSetting->institute)): ?>
                       <?php echo e($generalSetting->institute, false); ?>

                    <?php else: ?>
                        UNLIMITED Edu Firm
                    <?php endif; ?>
                </div>

                <div class="links">
                    <?php if(isset($data['welcome_menu']) && $data['welcome_menu']->count() > 0): ?>
                        <?php $__currentLoopData = $data['welcome_menu']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($Menu->page_type == 'content-page'): ?>
                                    <a href="<?php echo e(route('web.page').'/'.$Menu->slug, false); ?>" class="hvr-grow"><?php echo e($Menu->title, false); ?></a>
                                <?php elseif($Menu->page_type =="predefine-link"): ?>
                                    <a href="<?php echo e(route('web.home').'/'.$Menu->slug, false); ?>" class="hvr-grow"><?php echo e($Menu->title, false); ?></a>
                                <?php else: ?>
                                    <a href="<?php echo e($Menu->link, false); ?>" target="_blank" class="hvr-grow"><?php echo e($Menu->title, false); ?></a>
                                <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <a href="<?php echo e(route('web.home'), false); ?>" target="" class="hvr-grow">Web Page</a>
                        <a href="<?php echo e(route('login'), false); ?>" target="" class="hvr-grow">Login</a>
                    <?php endif; ?>
                   
                </div>
                <br>
                <div class="progress" id="myProgress">
                    <div id="myBar" class="progress-bar progress-bar-secondary active" role="progressbar"
                         aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="background-color: #6c757d!important;">
                        Redirect to Web Page
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <script>
            $(document).ready(function () {
                move();
            });

            var i = 0;
            function move() {
                console.log('we are in move');
                if (i == 0) {
                    i = 1;
                    var elem = document.getElementById("myBar");
                    var width = 1;
                    var id = setInterval(frame, 50);
                    function frame() {
                        if (width >= 100) {
                            clearInterval(id);
                            i = 0;
                            window.location.href = "<?php echo e(route('web.home'), false); ?>";
                        } else {
                            width++;
                            elem.style.width = width + "%";
                        }
                    }
                }
            }
        </script>
    </footer>
</html>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/welcome.blade.php ENDPATH**/ ?>