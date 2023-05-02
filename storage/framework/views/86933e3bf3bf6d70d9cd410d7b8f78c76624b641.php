<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>
        <?php if(isset($generalSetting->institute)): ?>
            <?php echo e($panel, false); ?> | <?php echo e($generalSetting->institute, false); ?>

        <?php else: ?>
            <?php echo e(isset($panel)?$panel:'', false); ?> | UNLIMITED Edu Firm
        <?php endif; ?>
    </title>
    <!--Favicon-->
    <?php if(isset($generalSetting->favicon)): ?>
        <link rel="shortcut icon" href="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$generalSetting->favicon), false); ?>" type="image/x-icon">
        <link rel="icon" href="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$generalSetting->favicon), false); ?>" type="image/x-icon">
    <?php endif; ?>

    <meta name="description" content="top menu &amp; navigation" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/bootstrap.min.css'), false); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset('assets/font-awesome/4.5.0/css/font-awesome.min.css'), false); ?>" />

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/fonts.googleapis.com.css'), false); ?>" />

    <!-- ace styles -->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace.min.css'), false); ?>" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-part2.min.css'), false); ?>" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-skins.min.css'), false); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-rtl.min.css'), false); ?>" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/ace-ie.min.css'), false); ?>" />
    <![endif]-->



    <!-- ace settings handler -->
    <script src="<?php echo e(asset('assets/js/ace-extra.min.js'), false); ?>"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="<?php echo e(asset('assets/js/html5shiv.min.js'), false); ?>"></script>
    <script src="<?php echo e(asset('assets/js/respond.min.js'), false); ?>"></script>
    <![endif]-->


    <link rel="stylesheet" href="<?php echo e(asset('assets/css/jquery-ui.custom.min.css'), false); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/bootstrap-datepicker3.min.css'), false); ?>" />
    
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/toastr.min.css'), false); ?>" >
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/select2.min.css'), false); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/chosen.min.css'), false); ?>" />

    <link href="https://fonts.googleapis.com/css?family=Fugaz+One|Lobster|Merienda|Righteous|Black+Ops+One|Gilda+Display" rel="stylesheet">
    <style>
        .chosen-container, [class*=chosen-container]{
            width: 400px !important;
            width: 100% !important;
        }
    </style>

    <!-- inline styles related to this page -->
    <link rel="stylesheet" href="<?php echo e(asset('css/custom.css'), false); ?>" />
    <?php echo $__env->yieldContent('css'); ?>

    <?php echo $__env->yieldContent('top-script'); ?>

    
    


</head><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/layouts/includes/header.blade.php ENDPATH**/ ?>