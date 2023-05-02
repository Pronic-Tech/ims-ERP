<div class="row">

    <div class="col-xs-12 col-sm-3 center">
        <div>
            <span class="profile-picture">
                <?php if($student->student_image != ''): ?>
                    <img id="avatar" alt="StudentPic" src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'studentProfile'.DIRECTORY_SEPARATOR.$student->student_image), false); ?>" width="150px" />
                <?php else: ?>
                    <img id="avatar" alt="StudentPic" src="<?php echo e(asset('assets/images/avatars/profile-pic.jpg'), false); ?>" width="150px" />
                <?php endif; ?>

            </span>

            <div class="space-4"></div>

        </div>
    </div>
    <div class="col-xs-12 col-sm-9">
        <div class="space-6"></div>
        <div class="label label-info label-xlg arrowed-in arrowed-right arrowed"></div>
        <div class="space-6"></div>
        <div class="profile-user-info profile-user-info-striped">
            <div class="profile-info-row">
                <div class="profile-info-name"> Name: </div>
                <div class="profile-info-value">
                    <span class="editable" id="reg_no">
                        <a href="<?php echo e(route('student.view', ['id' => $student->id]), false); ?>"><?php echo e($student->first_name.' '.
                    $student->middle_name.' '.$student->last_name, false); ?></a>
                    </span>
                    <input type="hidden" name="studentDue" id="receive_amount_temp" value="<?php echo e($student->balance, false); ?>" >

                </div>

                <div class="profile-info-name"> Reg. No.: </div>
                <div class="profile-info-value">
                    <span class="editable" id="reg_no">
                        <a href="<?php echo e(route('student.view', ['id' => $student->id]), false); ?>" target="_blank"><?php echo e(ViewHelper::getStudentById($student->id), false); ?></a>
                    </span>

                </div>

            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Univ.Reg.: </div>
                <div class="profile-info-value">
                    <span class="editable" id="university_reg"><?php echo e($student->university_reg, false); ?></span>
                </div>
                <div class="profile-info-name"> DOB : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name"><?php echo e(\Carbon\Carbon::parse($student->date_of_birth)->format('Y-m-d'), false); ?></span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Faculty/Class: </div>
                <div class="profile-info-value">
                    <span class="editable" id="faculty"><?php echo e(ViewHelper::getFacultyTitle( $student->faculty ), false); ?></span>
                </div>
                <div class="profile-info-name"> Sem./Sec. :</div>
                <div class="profile-info-value">
                    <span class="editable" id="semester"><?php echo e(ViewHelper::getSemesterTitle( $student->semester ), false); ?></span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Gender : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name"><?php echo e($student->gender, false); ?></span>
                </div>
                <div class="profile-info-name"> Blood Group : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name"><?php echo e($student->blood_group, false); ?></span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Nationality : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name"><?php echo e($student->nationality, false); ?></span>
                </div>

                <div class="profile-info-name"> E-mail : </div>
                <div class="profile-info-value">
                    <span class="editable" id="email"><?php echo e($student->email, false); ?></span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Balance Fee : </div>
                <div class="profile-info-value text-uppercase">
                    <span class="editable"><?php echo e($student->balance, false); ?></span>
                    [<?php echo e(ViewHelper::convertNumberToWord($student->balance), false); ?>]
                </div>
            </div>
        </div>
        <div class="col-xs-12 clearfix">
                <span class="editable" id="ledger_link">
                    <a href="<?php echo e(route('account.fees.due.view', ['id' => $student->id]), false); ?>" target="_blank" class="label label-primary label-lg white">
                        <i class="ace-icon fa fa-calculator  align-top bigger-125 icon-on-right"></i>
                        Pay Selected Due
                    </a>

                    <a href="<?php echo e(route('account.fees.collection.view', ['id' => $student->id]), false); ?>" target="_blank" class="label label-primary label-lg white">
                        <i class="ace-icon fa fa-eye  align-top bigger-125 icon-on-right"></i>
                        ViewLedger
                    </a>

                    <a class="label label-primary label-lg white inline" href="<?php echo e(route('print-out.fees.student-ledger', ['id' => $student->id]), false); ?>" target="_blank">
                        Print Ledger
                        <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
                    </a>

                    <a class="label label-warning label-lg white inline" href="<?php echo e(route('print-out.fees.student-due-detail', ['id' => $student->id]), false); ?>" target="_blank">
                        Due Detail : <?php echo e(number_format($student->balance, 2), false); ?>/-
                        <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
                    </a>

                    <a class="label label-warning label-lg white inline" href="<?php echo e(route('print-out.fees.student-due', ['id' => $student->id]), false); ?>" target="_blank">
                        Total Balance
                        <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
                    </a>

                    <a class="label label-success label-lg white inline" href="<?php echo e(route('print-out.fees.today-receipt-detail', ['id' => $student->id]), false); ?>" target="_blank">
                        Today Receipt Detail
                        <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
                    </a>

                    <a class="label label-success label-lg white inline" href="<?php echo e(route('print-out.fees.today-receipt', ['id' => $student->id]), false); ?>" target="_blank">
                        Receipt
                        <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
                    </a>
                </span>

        </div>
    </div>
</div><!-- /.row --><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/quickreceive/includes/student_detail_tr.blade.php ENDPATH**/ ?>