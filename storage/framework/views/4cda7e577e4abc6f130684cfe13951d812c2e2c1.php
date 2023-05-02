<?php $__env->startSection('css'); ?>
    <!-- page specific plugin styles -->
    <link href="https://fonts.googleapis.com/css?family=Fugaz+One|Lobster|Merienda|Righteous|Black+Ops+One|Gilda+Display" rel="stylesheet">
    <style>
        .page-content {
            padding: 35px 30px !important;
            border: 30px #438eb9 solid;
        }
        @media  print {
            .main-content {
                width: 210mm;
                height: 297mm;
                padding: 15px 15px !important;
                border: 30px #438eb9 solid;
            }

            .page-content {
                padding: 0;
                border: none;
            }
            /* ... the rest of the rules ... */
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php if($data['student'] && $data['student']->count() > 0): ?>
        <?php $__currentLoopData = $data['student']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="main-content " >
                <div class="col-sm-12 align-right hidden-print">
                    <a href="#" class="btn btn-primary" onclick="window.print();">
                        <i class="ace-icon fa fa-print bigger-200"></i> Print
                    </a>
                </div>
                <div class="main-content-inner">
                    <div class="page-content">
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1">
                                        <div class="widget-box transparent">

                                            <div class="row">
                                                <div class="col-md-2 col-print-2 align-left">
                                                    <?php if(isset($generalSetting->logo)): ?>
                                                        <img src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$generalSetting->logo), false); ?>" width="150px">
                                                    <?php endif; ?>
                                                </div>
                                                <div class="col-md-8 col-print-8 align-left">
                                                    <div class="text-center">
                                                        <h2 class="no-margin-top" style="font-family: 'Merienda', cursive; font-size: 20px">
                                                            <strong><?php echo e($generalSetting->institute, false); ?></strong>
                                                        </h2>
                                                        <h4 class="text-uppercase no-margin-top">Department of Examination</h4>

                                                        <div class="space-4"></div>
                                                        <h2 class="no-margin text-uppercase" style="font-family: 'Black Ops One', cursive;font-size: 30px">
                                                            <strong><u>Admit Card</u></strong>
                                                        </h2>
                                                        <h3 class="no-margin-top" style="font-family: 'Righteous', cursive;">for</h3>
                                                        <h3 class="no-margin no-margin-top text-uppercase" style="font-family: 'Black Ops One', cursive;font-size: 22px">
                                                            <strong><u><?php echo e(ViewHelper::getExamById($data['exam']), false); ?> - <?php echo e(ViewHelper::getYearById($data['year']), false); ?></u></strong>
                                                        </h3>
                                                    </div>
                                                </div>
                                                <div class="col-md-2 col-print-2 align-right">
                                                    <?php if($student->student_image != ''): ?>
                                                        <img class="img-thumbnail"  alt="<?php echo e($student->title, false); ?>" src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'studentProfile'.DIRECTORY_SEPARATOR.$student->student_image), false); ?>" width="120px" />
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                            <div class="space-8"></div>
                                            <div class=row">
                                                <div class="profile-user-info profile-user-info-striped">
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Level : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="faculty"><?php echo e(ViewHelper::getFacultyTitle( $data['faculty'] ), false); ?>/<?php echo e(ViewHelper::getSemesterTitle( $data['semester'] ), false); ?></span>
                                                        </div>
                                                        <div class="profile-info-name"> Reg. No.: </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="reg_no"><strong><?php echo e($student->reg_no, false); ?></strong></span>
                                                        </div>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Name : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="student_name"><strong><?php echo e($student->first_name.' '.$student->middle_name.' '.$student->last_name, false); ?></strong></span>
                                                        </div>
                                                        <div class="profile-info-name"> Date Of Birth :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="reg_date"><?php echo e(\Carbon\Carbon::parse($student->date_of_birth)->format('Y-m-d'), false); ?></span>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="text-center">
                                            <div class="space-4"></div>
                                                <h2 class="no-margin text-uppercase" style="font-family: 'Black Ops One', cursive;font-size: 30px">
                                                    <strong><u>Schedule</u></strong>
                                                </h2>
                                            </div>
                                            <div class=row">
                                                <table class="table table-striped table-bordered no-margin-bottom text-uppercase">
                                                    <thead>
                                                    <tr class="text-center">
                                                        <th class="center"></th>
                                                        <th>Date</th>
                                                        <th>Time</th>
                                                        <th>Subject</th>
                                                        <th>FM(T)</th>
                                                        <th>PM(T)</th>
                                                        <th>FM(P)</th>
                                                        <th>PM(P)</th>
                                                    </tr>
                                                    </thead>

                                                    <tbody>
                                                    <?php if($data['subjects']  && $data['subjects'] ->count() > 0): ?>
                                                        <?php ($i=1); ?>
                                                        <?php $__currentLoopData = $data['subjects']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <tr>
                                                                <td class="center"><?php echo e($i, false); ?></td>
                                                                <td> <?php echo e(\Carbon\Carbon::parse($subject->date)->format('Y-m-d'), false); ?></td>
                                                                <td>
                                                                    <?php echo e(\Carbon\Carbon::parse($subject->start_time )->format('g:i A'), false); ?>

                                                                    To
                                                                    <?php echo e(\Carbon\Carbon::parse($subject->end_time )->format('g:i A'), false); ?>

                                                                </td>
                                                                <td> <?php echo e($subject->title, false); ?>  [<?php echo e($subject->code, false); ?>] </td>
                                                                <td class="center"><?php echo e($subject->full_mark_theory?$subject->full_mark_theory:'-', false); ?></td>
                                                                <td class="center"><?php echo e($subject->pass_mark_theory?$subject->pass_mark_theory:'-', false); ?></td>
                                                                <td class="center"><?php echo e($subject->full_mark_practical?$subject->full_mark_practical:'-', false); ?></td>
                                                                <td class="center"><?php echo e($subject->pass_mark_practical?$subject->pass_mark_practical:'-', false); ?></td>
                                                            </tr>
                                                            <?php ($i++); ?>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    <?php else: ?>
                                                        <tr colspan="6"></tr>
                                                    <?php endif; ?>
                                                    </tbody>
                                                </table>
                                                <div class="well well-sm">
                                                    Abbreviations | FM:Full Mark, PM: Pass Mark, T:Theory,P:Practical
                                                </div>
                                            </div>

                                            <div class="space-18"></div>
                                            <div class="row text-uppercase">
                                                <div class="pull-left text-center" >
                                                        <span>
                                                            <strong style="border-bottom: 2px black solid"  ><?php echo e(\Carbon\Carbon::now()->format('Y-m-d'), false); ?></strong ><br>
                                                            Print Date
                                                        </span>
                                                </div>
                                                <div class="pull-right text-center">
                                                    <br>
                                                    <span style="border-top: 2px black solid; padding: 0px 50px;">&nbsp;Controller of Examination&nbsp;</span >
                                                </div>
                                            </div>
                                            <div class="space-10"></div>
                                            <div class="well well-sm">
                                                Note:Student will give his/her exam with our examinations rule & regulation.
                                            </div>
                                        </div>
                                        <!-- PAGE CONTENT ENDS -->

                                    </div><!-- /.col -->
                                </div><!-- /.row -->
                            </div><!-- /.page-content -->
                        </div>
                    </div>
                </div>
            </div><!-- /.main-content -->
            
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <!-- inline scripts related to this page -->
   <?php echo $__env->make('includes.scripts.print_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/exam/admit-card-with-schedule.blade.php ENDPATH**/ ?>